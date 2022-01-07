
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int decimal ;


 int memset (int *,int ,int) ;
 scalar_t__ pgtypes_alloc (int) ;

decimal *
PGTYPESdecimal_new(void)
{
 decimal *var;

 if ((var = (decimal *) pgtypes_alloc(sizeof(decimal))) == ((void*)0))
  return ((void*)0);

 memset(var, 0, sizeof(decimal));

 return var;
}
