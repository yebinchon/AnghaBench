
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* val; int * keyword; } ;
typedef TYPE_1__ PQconninfoOption ;


 int ERRCODE_S_R_E_PROHIBITED_SQL_STATEMENT_ATTEMPTED ;
 int ERROR ;
 int PQconninfoFree (TYPE_1__*) ;
 TYPE_1__* PQconninfoParse (char const*,int *) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*) ;
 int errmsg (char*) ;
 scalar_t__ strcmp (int *,char*) ;
 int superuser () ;

__attribute__((used)) static void
dblink_connstr_check(const char *connstr)
{
 if (!superuser())
 {
  PQconninfoOption *options;
  PQconninfoOption *option;
  bool connstr_gives_password = 0;

  options = PQconninfoParse(connstr, ((void*)0));
  if (options)
  {
   for (option = options; option->keyword != ((void*)0); option++)
   {
    if (strcmp(option->keyword, "password") == 0)
    {
     if (option->val != ((void*)0) && option->val[0] != '\0')
     {
      connstr_gives_password = 1;
      break;
     }
    }
   }
   PQconninfoFree(options);
  }

  if (!connstr_gives_password)
   ereport(ERROR,
     (errcode(ERRCODE_S_R_E_PROHIBITED_SQL_STATEMENT_ATTEMPTED),
      errmsg("password is required"),
      errdetail("Non-superusers must provide a password in the connection string.")));
 }
}
