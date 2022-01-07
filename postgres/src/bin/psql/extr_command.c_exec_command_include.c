
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int backslashResult ;
typedef int PsqlScanState ;


 scalar_t__ EXIT_SUCCESS ;
 int OT_NORMAL ;
 int PSQL_CMD_ERROR ;
 int PSQL_CMD_SKIP_LINE ;
 int expand_tilde (char**) ;
 int free (char*) ;
 int ignore_slash_options (int ) ;
 int pg_log_error (char*,char const*) ;
 scalar_t__ process_file (char*,int) ;
 char* psql_scan_slash_option (int ,int ,int *,int) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static backslashResult
exec_command_include(PsqlScanState scan_state, bool active_branch, const char *cmd)
{
 bool success = 1;

 if (active_branch)
 {
  char *fname = psql_scan_slash_option(scan_state,
               OT_NORMAL, ((void*)0), 1);

  if (!fname)
  {
   pg_log_error("\\%s: missing required argument", cmd);
   success = 0;
  }
  else
  {
   bool include_relative;

   include_relative = (strcmp(cmd, "ir") == 0
        || strcmp(cmd, "include_relative") == 0);
   expand_tilde(&fname);
   success = (process_file(fname, include_relative) == EXIT_SUCCESS);
   free(fname);
  }
 }
 else
  ignore_slash_options(scan_state);

 return success ? PSQL_CMD_SKIP_LINE : PSQL_CMD_ERROR;
}
