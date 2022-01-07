
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ TOK_SAR ;
 scalar_t__ TOK_SHL ;
 int expr_sum () ;
 int next () ;
 scalar_t__ tok ;

__attribute__((used)) static void expr_shift(void) {
 expr_sum ();
 while (tok == TOK_SHL || tok == TOK_SAR) {
  next ();
  expr_sum ();
 }
}
