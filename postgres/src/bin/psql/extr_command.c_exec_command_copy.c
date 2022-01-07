
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int backslashResult ;
typedef int PsqlScanState ;


 int OT_WHOLE_LINE ;
 int PSQL_CMD_ERROR ;
 int PSQL_CMD_SKIP_LINE ;
 int do_copy (char*) ;
 int free (char*) ;
 int ignore_slash_whole_line (int ) ;
 char* psql_scan_slash_option (int ,int ,int *,int) ;

__attribute__((used)) static backslashResult
exec_command_copy(PsqlScanState scan_state, bool active_branch)
{
 bool success = 1;

 if (active_branch)
 {
  char *opt = psql_scan_slash_option(scan_state,
             OT_WHOLE_LINE, ((void*)0), 0);

  success = do_copy(opt);
  free(opt);
 }
 else
  ignore_slash_whole_line(scan_state);

 return success ? PSQL_CMD_SKIP_LINE : PSQL_CMD_ERROR;
}
