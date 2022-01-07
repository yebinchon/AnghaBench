
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int userid; } ;
typedef TYPE_1__ UserMapping ;


 int ERRCODE_S_R_E_PROHIBITED_SQL_STATEMENT_ATTEMPTED ;
 int ERROR ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*) ;
 int errmsg (char*) ;
 scalar_t__ strcmp (char const*,char*) ;
 scalar_t__ superuser_arg (int ) ;

__attribute__((used)) static void
check_conn_params(const char **keywords, const char **values, UserMapping *user)
{
 int i;


 if (superuser_arg(user->userid))
  return;


 for (i = 0; keywords[i] != ((void*)0); i++)
 {
  if (strcmp(keywords[i], "password") == 0 && values[i][0] != '\0')
   return;
 }

 ereport(ERROR,
   (errcode(ERRCODE_S_R_E_PROHIBITED_SQL_STATEMENT_ATTEMPTED),
    errmsg("password is required"),
    errdetail("Non-superusers must provide a password in the user mapping.")));
}
