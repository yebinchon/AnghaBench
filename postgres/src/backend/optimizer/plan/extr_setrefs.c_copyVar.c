
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Var ;


 scalar_t__ palloc (int) ;

__attribute__((used)) static inline Var *
copyVar(Var *var)
{
 Var *newvar = (Var *) palloc(sizeof(Var));

 *newvar = *var;
 return newvar;
}
