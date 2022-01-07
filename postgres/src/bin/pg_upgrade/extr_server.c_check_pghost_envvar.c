
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* envvar; int * keyword; } ;
typedef TYPE_1__ PQconninfoOption ;


 TYPE_1__* PQconndefaults () ;
 int PQconninfoFree (TYPE_1__*) ;
 char* getenv (char const*) ;
 int pg_fatal (char*,...) ;
 scalar_t__ strcmp (char const*,char*) ;
 scalar_t__ strlen (char const*) ;

void
check_pghost_envvar(void)
{
 PQconninfoOption *option;
 PQconninfoOption *start;



 start = PQconndefaults();

 if (!start)
  pg_fatal("out of memory\n");

 for (option = start; option->keyword != ((void*)0); option++)
 {
  if (option->envvar && (strcmp(option->envvar, "PGHOST") == 0 ||
          strcmp(option->envvar, "PGHOSTADDR") == 0))
  {
   const char *value = getenv(option->envvar);

   if (value && strlen(value) > 0 &&

    (strcmp(value, "localhost") != 0 && strcmp(value, "127.0.0.1") != 0 &&
     strcmp(value, "::1") != 0 && value[0] != '/'))
    pg_fatal("libpq environment variable %s has a non-local server value: %s\n",
       option->envvar, value);
  }
 }


 PQconninfoFree(start);
}
