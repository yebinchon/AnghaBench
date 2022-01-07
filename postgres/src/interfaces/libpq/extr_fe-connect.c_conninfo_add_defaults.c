
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* envvar; char* compiled; int * val; int * keyword; } ;
typedef TYPE_1__ PQconninfoOption ;
typedef scalar_t__ PQExpBuffer ;


 void* getenv (char*) ;
 int libpq_gettext (char*) ;
 scalar_t__ parseServiceInfo (TYPE_1__*,scalar_t__) ;
 int * pg_fe_getauthname (int *) ;
 int printfPQExpBuffer (scalar_t__,int ) ;
 scalar_t__ strcmp (int *,char*) ;
 void* strdup (char*) ;

__attribute__((used)) static bool
conninfo_add_defaults(PQconninfoOption *options, PQExpBuffer errorMessage)
{
 PQconninfoOption *option;
 char *tmp;






 if (parseServiceInfo(options, errorMessage) != 0 && errorMessage)
  return 0;





 for (option = options; option->keyword != ((void*)0); option++)
 {
  if (option->val != ((void*)0))
   continue;




  if (option->envvar != ((void*)0))
  {
   if ((tmp = getenv(option->envvar)) != ((void*)0))
   {
    option->val = strdup(tmp);
    if (!option->val)
    {
     if (errorMessage)
      printfPQExpBuffer(errorMessage,
            libpq_gettext("out of memory\n"));
     return 0;
    }
    continue;
   }
  }







  if (strcmp(option->keyword, "sslmode") == 0)
  {
   const char *requiresslenv = getenv("PGREQUIRESSL");

   if (requiresslenv != ((void*)0) && requiresslenv[0] == '1')
   {
    option->val = strdup("require");
    if (!option->val)
    {
     if (errorMessage)
      printfPQExpBuffer(errorMessage,
            libpq_gettext("out of memory\n"));
     return 0;
    }
    continue;
   }
  }





  if (option->compiled != ((void*)0))
  {
   option->val = strdup(option->compiled);
   if (!option->val)
   {
    if (errorMessage)
     printfPQExpBuffer(errorMessage,
           libpq_gettext("out of memory\n"));
    return 0;
   }
   continue;
  }
  if (strcmp(option->keyword, "user") == 0)
  {
   option->val = pg_fe_getauthname(((void*)0));
   continue;
  }
 }

 return 1;
}
