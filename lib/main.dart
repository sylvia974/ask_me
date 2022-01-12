import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter ask me',
      home: const MyHomePage(title: 'Ask Me Anything'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int change = Random().nextInt(5)+1;
  void _incrementCounter() {
    setState(() {
      change = Random().nextInt(5)+1;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child:
           TextButton(
             onPressed: () { _incrementCounter(); },
             child: Image.asset('images/ball$change.png'
                ),
           ),
      ),
    );
  }
}
