import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dice'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget { //여기부터
  const DicePage({Key key}) : super(key: key); //강의 다시봐도 이게 뭔지 안나옴.... 이건 뭐여 대체....

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> { //여기까지 함수호출 및  key 부분이 이해가 잘 안됨 (알아보니 스테이트풀 위젯 생성하면 자동으로 생성되는 클라스 두개임)
  var leftDiceNumber = 1;
  var rightDiceNumber = 1;

  void ChangeDiceNumber() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: TextButton(
                onPressed: () {
                  ChangeDiceNumber();
                },
                child: Image.asset('images/dice$leftDiceNumber.png'),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: TextButton(
                onPressed: () {
                  ChangeDiceNumber();
                },
                child: Image.asset('images/dice$rightDiceNumber.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
