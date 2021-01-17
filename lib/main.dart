import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        // backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text(
            'Dice App',
            style: TextStyle(
              color: Colors.black,
              fontSize: 28,
            ),
          ),
          backgroundColor: Colors.orange,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void RollDice() {
    leftDiceNumber = Random().nextInt(6) + 1;
    rightDiceNumber = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    RollDice();
                  });
                }, //VoidCallback
                child:
                    Image.asset('images/dice$leftDiceNumber' + '_orange.png'),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    RollDice();
                  });
                },
                child:
                    Image.asset('images/dice$rightDiceNumber' + '_orange.png'),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          setState(() {
            RollDice();
          });
        },
        label: Text(
          'Roll',
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
          ),
        ),
        icon: Icon(
          Icons.loop,
          color: Colors.black,
          size: 30,
        ),
        backgroundColor: Colors.orange,
      ),
    );
  }
}
