
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double get_float8_infinity () ;
 double get_float8_nan () ;
 scalar_t__ pg_strncasecmp (char*,char*,int) ;

__attribute__((used)) static bool
check_special_value(char *ptr, double *retval, char **endptr)
{
 if (pg_strncasecmp(ptr, "NaN", 3) == 0)
 {
  *retval = get_float8_nan();
  *endptr = ptr + 3;
  return 1;
 }
 else if (pg_strncasecmp(ptr, "Infinity", 8) == 0)
 {
  *retval = get_float8_infinity();
  *endptr = ptr + 8;
  return 1;
 }
 else if (pg_strncasecmp(ptr, "-Infinity", 9) == 0)
 {
  *retval = -get_float8_infinity();
  *endptr = ptr + 9;
  return 1;
 }

 return 0;
}
