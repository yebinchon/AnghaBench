
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char TOK_A_DIV ;
 char TOK_A_MOD ;
 char TOK_A_OR ;
 char TOK_A_SAR ;
 char TOK_A_SHL ;
 char TOK_A_XOR ;
 int expr_cond () ;
 int next () ;
 int test_lvalue () ;
 char tok ;
 int vdup () ;

__attribute__((used)) static void expr_eq(void) {
 int t;

 expr_cond ();
 if (tok == '=' ||
     (tok >= TOK_A_MOD && tok <= TOK_A_DIV) ||
     tok == TOK_A_XOR || tok == TOK_A_OR ||
     tok == TOK_A_SHL || tok == TOK_A_SAR) {
  test_lvalue ();
  t = tok;
  next ();
  if (t == '=') {
   expr_eq ();
  } else {
   vdup ();
   expr_eq ();
  }
 }
}
