
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int backslashResult ;
typedef int PsqlScanState ;


 int PSQL_CMD_SKIP_LINE ;
 int PSQL_CMD_TERMINATE ;

__attribute__((used)) static backslashResult
exec_command_quit(PsqlScanState scan_state, bool active_branch)
{
 backslashResult status = PSQL_CMD_SKIP_LINE;

 if (active_branch)
  status = PSQL_CMD_TERMINATE;

 return status;
}
