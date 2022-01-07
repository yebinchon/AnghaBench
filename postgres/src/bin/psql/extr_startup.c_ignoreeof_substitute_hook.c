
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ParseVariableNum (char*,int *,int*) ;
 char* pg_strdup (char*) ;

__attribute__((used)) static char *
ignoreeof_substitute_hook(char *newval)
{
 int dummy;
 if (newval == ((void*)0))
  newval = pg_strdup("0");
 else if (!ParseVariableNum(newval, ((void*)0), &dummy))
  newval = pg_strdup("10");
 return newval;
}
