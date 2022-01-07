
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PlannerInfo ;
typedef int Node ;


 int * replace_correlation_vars_mutator (int *,int *) ;

Node *
SS_replace_correlation_vars(PlannerInfo *root, Node *expr)
{

 return replace_correlation_vars_mutator(expr, root);
}
