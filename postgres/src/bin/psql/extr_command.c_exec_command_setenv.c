
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int backslashResult ;
typedef int PsqlScanState ;


 int OT_NORMAL ;
 int PSQL_CMD_ERROR ;
 int PSQL_CMD_SKIP_LINE ;
 int free (char*) ;
 int ignore_slash_options (int ) ;
 int pg_log_error (char*,char const*) ;
 char* psprintf (char*,char*,char*) ;
 char* psql_scan_slash_option (int ,int ,int *,int) ;
 int putenv (char*) ;
 int * strchr (char*,char) ;
 int unsetenv (char*) ;

__attribute__((used)) static backslashResult
exec_command_setenv(PsqlScanState scan_state, bool active_branch,
     const char *cmd)
{
 bool success = 1;

 if (active_branch)
 {
  char *envvar = psql_scan_slash_option(scan_state,
             OT_NORMAL, ((void*)0), 0);
  char *envval = psql_scan_slash_option(scan_state,
             OT_NORMAL, ((void*)0), 0);

  if (!envvar)
  {
   pg_log_error("\\%s: missing required argument", cmd);
   success = 0;
  }
  else if (strchr(envvar, '=') != ((void*)0))
  {
   pg_log_error("\\%s: environment variable name must not contain \"=\"",
       cmd);
   success = 0;
  }
  else if (!envval)
  {

   unsetenv(envvar);
   success = 1;
  }
  else
  {

   char *newval;

   newval = psprintf("%s=%s", envvar, envval);
   putenv(newval);
   success = 1;






  }
  free(envvar);
  free(envval);
 }
 else
  ignore_slash_options(scan_state);

 return success ? PSQL_CMD_SKIP_LINE : PSQL_CMD_ERROR;
}
