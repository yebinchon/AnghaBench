
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double float8in_internal_opt_error (char*,char**,char const*,char const*,int *) ;

double
float8in_internal(char *num, char **endptr_p,
      const char *type_name, const char *orig_string)
{
 return float8in_internal_opt_error(num, endptr_p, type_name,
            orig_string, ((void*)0));
}
