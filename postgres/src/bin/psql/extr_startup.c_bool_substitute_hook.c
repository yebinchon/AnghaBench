
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pg_free (char*) ;
 char* pg_strdup (char*) ;

__attribute__((used)) static char *
bool_substitute_hook(char *newval)
{
 if (newval == ((void*)0))
 {

  newval = pg_strdup("off");
 }
 else if (newval[0] == '\0')
 {

  pg_free(newval);
  newval = pg_strdup("on");
 }
 return newval;
}
