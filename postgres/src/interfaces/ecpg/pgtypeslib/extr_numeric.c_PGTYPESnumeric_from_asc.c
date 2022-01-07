
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int numeric ;


 int PGTYPESnumeric_free (int *) ;
 scalar_t__ pgtypes_alloc (int) ;
 int set_var_from_str (char*,char**,int *) ;

numeric *
PGTYPESnumeric_from_asc(char *str, char **endptr)
{
 numeric *value = (numeric *) pgtypes_alloc(sizeof(numeric));
 int ret;

 char *realptr;
 char **ptr = (endptr != ((void*)0)) ? endptr : &realptr;

 if (!value)
  return ((void*)0);

 ret = set_var_from_str(str, ptr, value);
 if (ret)
 {
  PGTYPESnumeric_free(value);
  return ((void*)0);
 }

 return value;
}
