
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int expr_prod () ;
 int next () ;
 char tok ;

void expr_sum(void) {
 expr_prod ();
 while (tok == '+' || tok == '-') {
  next ();
  expr_prod ();
 }
}
