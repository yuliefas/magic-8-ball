import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: BallPage(),
    ),
  );
}

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Text(
          'Ask Me anything',
        ),
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  void setupBallNumber() {
    ballNumber = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            backgroundImage: AssetImage('images/pixlr.jpg'),
            radius: 50.0,
          ),
          Text(
            'Yuliefas',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Pacifico',
              fontSize: 40.0,
            ),
          ),
          SizedBox(
            width: 150.0,
            height: 20.0,
            child: Divider(
              color: Colors.white,
            ),
          ),
          FlatButton(
            onPressed: () {
              setState(() {
                setupBallNumber();
              });
            },
            child: Image.asset('images/ball$ballNumber.png'),
          ),
        ],
      ),
    );
  }
}
