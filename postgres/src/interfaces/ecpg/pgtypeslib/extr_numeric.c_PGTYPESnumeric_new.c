
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int numeric ;


 scalar_t__ alloc_var (int *,int ) ;
 int free (int *) ;
 scalar_t__ pgtypes_alloc (int) ;

numeric *
PGTYPESnumeric_new(void)
{
 numeric *var;

 if ((var = (numeric *) pgtypes_alloc(sizeof(numeric))) == ((void*)0))
  return ((void*)0);

 if (alloc_var(var, 0) < 0)
 {
  free(var);
  return ((void*)0);
 }

 return var;
}
