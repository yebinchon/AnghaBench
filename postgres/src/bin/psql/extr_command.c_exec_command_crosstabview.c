
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int backslashResult ;
struct TYPE_2__ {int crosstab_flag; int * ctv_args; } ;
typedef int PsqlScanState ;


 int OT_NORMAL ;
 int PSQL_CMD_SEND ;
 int PSQL_CMD_SKIP_LINE ;
 int ignore_slash_options (int ) ;
 int lengthof (int *) ;
 TYPE_1__ pset ;
 int psql_scan_slash_option (int ,int ,int *,int) ;

__attribute__((used)) static backslashResult
exec_command_crosstabview(PsqlScanState scan_state, bool active_branch)
{
 backslashResult status = PSQL_CMD_SKIP_LINE;

 if (active_branch)
 {
  int i;

  for (i = 0; i < lengthof(pset.ctv_args); i++)
   pset.ctv_args[i] = psql_scan_slash_option(scan_state,
               OT_NORMAL, ((void*)0), 1);
  pset.crosstab_flag = 1;
  status = PSQL_CMD_SEND;
 }
 else
  ignore_slash_options(scan_state);

 return status;
}
