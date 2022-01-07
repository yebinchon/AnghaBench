
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Node ;


 int contain_volatile_functions_not_nextval_walker (int *,int *) ;

bool
contain_volatile_functions_not_nextval(Node *clause)
{
 return contain_volatile_functions_not_nextval_walker(clause, ((void*)0));
}
