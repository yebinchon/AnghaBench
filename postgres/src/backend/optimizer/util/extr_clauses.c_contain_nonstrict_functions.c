
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Node ;


 int contain_nonstrict_functions_walker (int *,int *) ;

bool
contain_nonstrict_functions(Node *clause)
{
 return contain_nonstrict_functions_walker(clause, ((void*)0));
}
