
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int backslashResult ;
struct TYPE_2__ {int gdesc_flag; } ;
typedef int PsqlScanState ;


 int PSQL_CMD_SEND ;
 int PSQL_CMD_SKIP_LINE ;
 TYPE_1__ pset ;

__attribute__((used)) static backslashResult
exec_command_gdesc(PsqlScanState scan_state, bool active_branch)
{
 backslashResult status = PSQL_CMD_SKIP_LINE;

 if (active_branch)
 {
  pset.gdesc_flag = 1;
  status = PSQL_CMD_SEND;
 }

 return status;
}
