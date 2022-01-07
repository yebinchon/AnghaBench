
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ errno ;
 int fprintf (int ,char*,char const*) ;
 int stderr ;
 double strtod (char const*,char**) ;
 scalar_t__ unlikely (int) ;

bool
strtodouble(const char *str, bool errorOK, double *dv)
{
 char *end;

 errno = 0;
 *dv = strtod(str, &end);

 if (unlikely(errno != 0))
 {
  if (!errorOK)
   fprintf(stderr,
     "value \"%s\" is out of range for type double\n", str);
  return 0;
 }

 if (unlikely(end == str || *end != '\0'))
 {
  if (!errorOK)
   fprintf(stderr,
     "invalid input syntax for type double: \"%s\"\n", str);
  return 0;
 }
 return 1;
}
