
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Node ;
typedef int Expr ;
typedef int Bitmapset ;


 int pull_exec_paramids_walker (int *,int **) ;

__attribute__((used)) static Bitmapset *
pull_exec_paramids(Expr *expr)
{
 Bitmapset *result = ((void*)0);

 (void) pull_exec_paramids_walker((Node *) expr, &result);

 return result;
}
