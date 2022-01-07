
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relids ;
typedef int Node ;


 scalar_t__ bms_is_empty (int ) ;
 int contain_volatile_functions (int *) ;

bool
is_pseudo_constant_clause_relids(Node *clause, Relids relids)
{
 if (bms_is_empty(relids) &&
  !contain_volatile_functions(clause))
  return 1;
 return 0;
}
