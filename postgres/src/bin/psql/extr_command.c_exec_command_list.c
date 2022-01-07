
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
 int listAllDbs (char*,int) ;
 char* psql_scan_slash_option (int ,int ,int *,int) ;
 scalar_t__ strchr (char const*,char) ;

__attribute__((used)) static backslashResult
exec_command_list(PsqlScanState scan_state, bool active_branch, const char *cmd)
{
 bool success = 1;

 if (active_branch)
 {
  char *pattern;
  bool show_verbose;

  pattern = psql_scan_slash_option(scan_state,
           OT_NORMAL, ((void*)0), 1);

  show_verbose = strchr(cmd, '+') ? 1 : 0;

  success = listAllDbs(pattern, show_verbose);

  if (pattern)
   free(pattern);
 }
 else
  ignore_slash_options(scan_state);

 return success ? PSQL_CMD_SKIP_LINE : PSQL_CMD_ERROR;
}
