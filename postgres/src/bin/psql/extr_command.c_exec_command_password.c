
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int pw2 ;
typedef int pw1 ;
typedef int backslashResult ;
struct TYPE_8__ {int db; } ;
struct TYPE_7__ {int data; } ;
typedef int PsqlScanState ;
typedef TYPE_1__ PQExpBufferData ;
typedef int PGresult ;


 int OT_SQLID ;
 int PQclear (int *) ;
 char* PQencryptPasswordConn (int ,char*,char*,int *) ;
 int PQerrorMessage (int ) ;
 int PQfreemem (char*) ;
 char* PQuser (int ) ;
 int PSQL_CMD_ERROR ;
 int PSQL_CMD_SKIP_LINE ;
 int * PSQLexec (int ) ;
 int appendStringLiteralConn (TYPE_1__*,char*,int ) ;
 int fmtId (char*) ;
 int free (char*) ;
 int ignore_slash_options (int ) ;
 int initPQExpBuffer (TYPE_1__*) ;
 int pg_log_error (char*) ;
 int pg_log_info (char*,int ) ;
 int printfPQExpBuffer (TYPE_1__*,char*,int ) ;
 TYPE_3__ pset ;
 char* psql_scan_slash_option (int ,int ,int *,int) ;
 int simple_prompt (char*,char*,int,int) ;
 scalar_t__ strcmp (char*,char*) ;
 int termPQExpBuffer (TYPE_1__*) ;

__attribute__((used)) static backslashResult
exec_command_password(PsqlScanState scan_state, bool active_branch)
{
 bool success = 1;

 if (active_branch)
 {
  char *opt0 = psql_scan_slash_option(scan_state,
              OT_SQLID, ((void*)0), 1);
  char pw1[100];
  char pw2[100];

  simple_prompt("Enter new password: ", pw1, sizeof(pw1), 0);
  simple_prompt("Enter it again: ", pw2, sizeof(pw2), 0);

  if (strcmp(pw1, pw2) != 0)
  {
   pg_log_error("Passwords didn't match.");
   success = 0;
  }
  else
  {
   char *user;
   char *encrypted_password;

   if (opt0)
    user = opt0;
   else
    user = PQuser(pset.db);

   encrypted_password = PQencryptPasswordConn(pset.db, pw1, user, ((void*)0));

   if (!encrypted_password)
   {
    pg_log_info("%s", PQerrorMessage(pset.db));
    success = 0;
   }
   else
   {
    PQExpBufferData buf;
    PGresult *res;

    initPQExpBuffer(&buf);
    printfPQExpBuffer(&buf, "ALTER USER %s PASSWORD ",
          fmtId(user));
    appendStringLiteralConn(&buf, encrypted_password, pset.db);
    res = PSQLexec(buf.data);
    termPQExpBuffer(&buf);
    if (!res)
     success = 0;
    else
     PQclear(res);
    PQfreemem(encrypted_password);
   }
  }

  if (opt0)
   free(opt0);
 }
 else
  ignore_slash_options(scan_state);

 return success ? PSQL_CMD_SKIP_LINE : PSQL_CMD_ERROR;
}
