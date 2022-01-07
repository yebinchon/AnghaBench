
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int float8 ;


 int float8in_internal (char*,char**,char const*,char const*) ;

__attribute__((used)) static float8
single_decode(char *num, char **endptr_p,
     const char *type_name, const char *orig_string)
{
 return float8in_internal(num, endptr_p, type_name, orig_string);
}
