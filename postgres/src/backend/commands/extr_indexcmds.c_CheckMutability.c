
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Node ;
typedef int Expr ;


 int contain_mutable_functions (int *) ;
 int * expression_planner (int *) ;

__attribute__((used)) static bool
CheckMutability(Expr *expr)
{
 expr = expression_planner(expr);


 return contain_mutable_functions((Node *) expr);
}
