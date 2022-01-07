
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int backslashResult ;
struct TYPE_2__ {char* gset_prefix; } ;
typedef int PsqlScanState ;


 int OT_NORMAL ;
 int PSQL_CMD_SEND ;
 int PSQL_CMD_SKIP_LINE ;
 int ignore_slash_options (int ) ;
 char* pg_strdup (char*) ;
 TYPE_1__ pset ;
 char* psql_scan_slash_option (int ,int ,int *,int) ;

__attribute__((used)) static backslashResult
exec_command_gset(PsqlScanState scan_state, bool active_branch)
{
 backslashResult status = PSQL_CMD_SKIP_LINE;

 if (active_branch)
 {
  char *prefix = psql_scan_slash_option(scan_state,
             OT_NORMAL, ((void*)0), 0);

  if (prefix)
   pset.gset_prefix = prefix;
  else
  {

   pset.gset_prefix = pg_strdup("");
  }

  status = PSQL_CMD_SEND;
 }
 else
  ignore_slash_options(scan_state);

 return status;
}
