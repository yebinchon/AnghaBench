
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 scalar_t__ malloc (scalar_t__) ;
 int pgwin32_putenv (char*) ;
 int sprintf (char*,char*,char const*) ;
 scalar_t__ strlen (char const*) ;

void
pgwin32_unsetenv(const char *name)
{
 char *envbuf;

 envbuf = (char *) malloc(strlen(name) + 2);
 if (!envbuf)
  return;

 sprintf(envbuf, "%s=", name);
 pgwin32_putenv(envbuf);
 free(envbuf);
}
