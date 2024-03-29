import 'package:flutter/material.dart';
import 'package:project_7/quote_card.dart';
import 'package:project_7/quotes.dart';

void main() {
  runApp(const MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  //Create a List
  // List<String> quotes = [
  //   '"I am Iron Man." - Tony Stark, Iron Man (2008)',
  //   '"Genius, billionaire, playboy, philanthropist." - Tony Stark, The Avengers (2012)',
  //   '"It\'s not about how much we lost, it\'s about how much we have left." - Tony Stark, Avengers: Endgame (2019)',
  //   '"Sometimes you gotta make a mess to clean things up." - Tony Stark, Iron Man 3 (2013)'
  // ];

  List<Quote> quotes = [
    Quote('I am Iron Man.', 'Tony Stark, Iron Man', 2008),
    Quote('Genius, billionaire, playboy, philanthropist.', 'Tony Stark, The Avengers', 2012),
    Quote('It\'s not about how much we lost, it\'s about how much we have left.', 'Tony Stark, Avengers: Endgame', 2019),
    Quote('Sometimes you gotta make a mess to clean things up.', 'Tony Stark, Iron Man 3', 2013),
    Quote('I am Iron Man.', 'Tony Stark, Iron Man', 2008),
    Quote('Genius, billionaire, playboy, philanthropist.', 'Tony Stark, The Avengers', 2012),
    Quote('It\'s not about how much we lost, it\'s about how much we have left.', 'Tony Stark, Avengers: Endgame', 2019),
    Quote('Sometimes you gotta make a mess to clean things up.', 'Tony Stark, Iron Man 3', 2013),
    Quote('Genius, billionaire, playboy, philanthropist.', 'Tony Stark, The Avengers', 2012),
    Quote('It\'s not about how much we lost, it\'s about how much we have left.', 'Tony Stark, Avengers: Endgame', 2019),
    Quote('Sometimes you gotta make a mess to clean things up.', 'Tony Stark, Iron Man 3', 2013),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[100],
      appBar: AppBar(
        title: const Text('Quotes'),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body:  Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: quotes.map((e) => QuoteCard(
                quote: e,
                delete: (){
                  setState(() {
                    quotes.remove(e);
                  });
                }
            )).toList(),
          ),
        ),
      ),
    );
  }
}



