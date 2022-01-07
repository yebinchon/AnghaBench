
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Node ;


 int contain_leaked_vars_walker (int *,int *) ;

bool
contain_leaked_vars(Node *clause)
{
 return contain_leaked_vars_walker(clause, ((void*)0));
}
