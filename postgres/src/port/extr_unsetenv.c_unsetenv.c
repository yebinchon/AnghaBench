
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * getenv (char const*) ;
 scalar_t__ malloc (scalar_t__) ;
 int putenv (char*) ;
 int sprintf (char*,char*,char const*) ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char const*) ;

void
unsetenv(const char *name)
{
 char *envstr;

 if (getenv(name) == ((void*)0))
  return;
 envstr = (char *) malloc(strlen(name) + 2);
 if (!envstr)
  return;


 sprintf(envstr, "%s=", name);
 putenv(envstr);


 strcpy(envstr, "=");





 putenv(envstr);
}
