import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wahyu_sejutacita/bloc/bloc.dart';

import 'package:wahyu_sejutacita/bloc/state.dart';
import 'package:wahyu_sejutacita/view/home_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (BuildContext context) {
          return GitHubBloc(InitialState());
        }),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: const TextTheme(
            headline6: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            bodyText1: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ))),
          inputDecorationTheme: InputDecorationTheme(
            filled: true,
            fillColor: Colors.grey[200],
            border: InputBorder.none,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
            ),
          ),
          cardTheme: CardTheme(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          iconTheme: IconThemeData(color: Colors.blue),
          primaryIconTheme: IconThemeData(color: Colors.blue),
        ),
        home: const MyHomePage(),
      ),
    );
  }
}


