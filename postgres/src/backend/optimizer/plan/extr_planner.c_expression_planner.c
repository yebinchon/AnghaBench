
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Node ;
typedef int Expr ;


 int * eval_const_expressions (int *,int *) ;
 int fix_opfuncids (int *) ;

Expr *
expression_planner(Expr *expr)
{
 Node *result;





 result = eval_const_expressions(((void*)0), (Node *) expr);


 fix_opfuncids(result);

 return (Expr *) result;
}
