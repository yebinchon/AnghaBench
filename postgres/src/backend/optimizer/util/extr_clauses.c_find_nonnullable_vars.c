
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Node ;
typedef int List ;


 int * find_nonnullable_vars_walker (int *,int) ;

List *
find_nonnullable_vars(Node *clause)
{
 return find_nonnullable_vars_walker(clause, 1);
}
