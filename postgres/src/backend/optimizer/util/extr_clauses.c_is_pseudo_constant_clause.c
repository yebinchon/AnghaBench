
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Node ;


 int contain_var_clause (int *) ;
 int contain_volatile_functions (int *) ;

bool
is_pseudo_constant_clause(Node *clause)
{






 if (!contain_var_clause(clause) &&
  !contain_volatile_functions(clause))
  return 1;
 return 0;
}
