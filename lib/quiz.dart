import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final int questionIndex;
  final Function answerQuestion;
  final List<Map<String, Object>> questions;

  Quiz({
    @required this.questionIndex,
    @required this.answerQuestion,
    @required this.questions,
  });

  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]["questionText"],
        ),
        ...(questions[questionIndex]["answers"] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => answerQuestion(answer["score"]), answer["text"]);
        }).toList()
      ],
    );
  }
}
