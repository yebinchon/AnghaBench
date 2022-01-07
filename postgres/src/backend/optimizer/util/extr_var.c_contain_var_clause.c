
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Node ;


 int contain_var_clause_walker (int *,int *) ;

bool
contain_var_clause(Node *node)
{
 return contain_var_clause_walker(node, ((void*)0));
}
