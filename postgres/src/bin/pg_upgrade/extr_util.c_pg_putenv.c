
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SetEnvironmentVariableA (char const*,char const*) ;
 char* psprintf (char*,char const*,char const*) ;
 int putenv (char*) ;
 int unsetenv (char const*) ;

void
pg_putenv(const char *var, const char *val)
{
 if (val)
 {

  char *envstr;

  envstr = psprintf("%s=%s", var, val);
  putenv(envstr);
 }
 else
 {

  unsetenv(var);



 }
}
