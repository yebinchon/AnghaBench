
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int backslashResult ;
typedef int PsqlScanState ;


 int OT_FILEPIPE ;
 int PSQL_CMD_ERROR ;
 int PSQL_CMD_SKIP_LINE ;
 int expand_tilde (char**) ;
 int free (char*) ;
 int ignore_slash_filepipe (int ) ;
 char* psql_scan_slash_option (int ,int ,int *,int) ;
 int setQFout (char*) ;

__attribute__((used)) static backslashResult
exec_command_out(PsqlScanState scan_state, bool active_branch)
{
 bool success = 1;

 if (active_branch)
 {
  char *fname = psql_scan_slash_option(scan_state,
               OT_FILEPIPE, ((void*)0), 1);

  expand_tilde(&fname);
  success = setQFout(fname);
  free(fname);
 }
 else
  ignore_slash_filepipe(scan_state);

 return success ? PSQL_CMD_SKIP_LINE : PSQL_CMD_ERROR;
}
