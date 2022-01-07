
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ TOK_GT ;
 scalar_t__ TOK_UGE ;
 scalar_t__ TOK_ULE ;
 scalar_t__ TOK_ULT ;
 int expr_shift () ;
 int next () ;
 scalar_t__ tok ;

__attribute__((used)) static void expr_cmp(void) {
 expr_shift ();
 while ((tok >= TOK_ULE && tok <= TOK_GT) ||
        tok == TOK_ULT || tok == TOK_UGE) {
  next ();
  expr_shift ();
 }
}
