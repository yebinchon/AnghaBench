
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int backslashResult ;
struct TYPE_2__ {int vars; } ;
typedef int PsqlScanState ;


 int OT_NORMAL ;
 int PSQL_CMD_ERROR ;
 int PSQL_CMD_SKIP_LINE ;
 int SetVariable (int ,char*,int *) ;
 int free (char*) ;
 int ignore_slash_options (int ) ;
 int pg_log_error (char*,char const*) ;
 TYPE_1__ pset ;
 char* psql_scan_slash_option (int ,int ,int *,int) ;

__attribute__((used)) static backslashResult
exec_command_unset(PsqlScanState scan_state, bool active_branch,
       const char *cmd)
{
 bool success = 1;

 if (active_branch)
 {
  char *opt = psql_scan_slash_option(scan_state,
             OT_NORMAL, ((void*)0), 0);

  if (!opt)
  {
   pg_log_error("\\%s: missing required argument", cmd);
   success = 0;
  }
  else if (!SetVariable(pset.vars, opt, ((void*)0)))
   success = 0;

  free(opt);
 }
 else
  ignore_slash_options(scan_state);

 return success ? PSQL_CMD_SKIP_LINE : PSQL_CMD_ERROR;
}
