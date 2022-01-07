
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ errno ;
 int pg_log_error (char*,char const*,char const*) ;
 long strtol (char const*,char**,int ) ;

bool
ParseVariableNum(const char *value, const char *name, int *result)
{
 char *end;
 long numval;


 if (value == ((void*)0))
  value = "";

 errno = 0;
 numval = strtol(value, &end, 0);
 if (errno == 0 && *end == '\0' && end != value && numval == (int) numval)
 {
  *result = (int) numval;
  return 1;
 }
 else
 {

  if (name)
   pg_log_error("invalid value \"%s\" for \"%s\": integer expected",
       value, name);
  return 0;
 }
}
