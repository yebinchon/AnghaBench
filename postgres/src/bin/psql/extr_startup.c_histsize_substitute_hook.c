
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* pg_strdup (char*) ;

__attribute__((used)) static char *
histsize_substitute_hook(char *newval)
{
 if (newval == ((void*)0))
  newval = pg_strdup("500");
 return newval;
}
