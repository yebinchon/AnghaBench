
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ TOK_EQ ;
 scalar_t__ TOK_NE ;
 int expr_cmp () ;
 int next () ;
 scalar_t__ tok ;

__attribute__((used)) static void expr_cmpeq(void) {
 expr_cmp ();
 while (tok == TOK_EQ || tok == TOK_NE) {
  next ();
  expr_cmp ();
 }
}
