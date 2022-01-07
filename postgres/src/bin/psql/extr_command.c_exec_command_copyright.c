
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int backslashResult ;
typedef int PsqlScanState ;


 int PSQL_CMD_SKIP_LINE ;
 int print_copyright () ;

__attribute__((used)) static backslashResult
exec_command_copyright(PsqlScanState scan_state, bool active_branch)
{
 if (active_branch)
  print_copyright();

 return PSQL_CMD_SKIP_LINE;
}
