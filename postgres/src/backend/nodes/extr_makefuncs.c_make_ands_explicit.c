
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int List ;
typedef int Expr ;


 int * NIL ;
 scalar_t__ linitial (int *) ;
 int list_length (int *) ;
 scalar_t__ makeBoolConst (int,int) ;
 int * make_andclause (int *) ;

Expr *
make_ands_explicit(List *andclauses)
{
 if (andclauses == NIL)
  return (Expr *) makeBoolConst(1, 0);
 else if (list_length(andclauses) == 1)
  return (Expr *) linitial(andclauses);
 else
  return make_andclause(andclauses);
}
