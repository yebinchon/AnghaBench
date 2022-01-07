
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int backslashResult ;
struct TYPE_4__ {int pager; } ;
struct TYPE_5__ {TYPE_1__ topt; } ;
struct TYPE_6__ {TYPE_2__ popt; } ;
typedef int PsqlScanState ;


 int OT_NORMAL ;
 int PSQL_CMD_SKIP_LINE ;
 int free (char*) ;
 int helpVariables (int ) ;
 int ignore_slash_options (int ) ;
 TYPE_3__ pset ;
 char* psql_scan_slash_option (int ,int ,int *,int) ;
 int slashUsage (int ) ;
 scalar_t__ strcmp (char*,char*) ;
 int usage (int ) ;

__attribute__((used)) static backslashResult
exec_command_slash_command_help(PsqlScanState scan_state, bool active_branch)
{
 if (active_branch)
 {
  char *opt0 = psql_scan_slash_option(scan_state,
              OT_NORMAL, ((void*)0), 0);

  if (!opt0 || strcmp(opt0, "commands") == 0)
   slashUsage(pset.popt.topt.pager);
  else if (strcmp(opt0, "options") == 0)
   usage(pset.popt.topt.pager);
  else if (strcmp(opt0, "variables") == 0)
   helpVariables(pset.popt.topt.pager);
  else
   slashUsage(pset.popt.topt.pager);

  if (opt0)
   free(opt0);
 }
 else
  ignore_slash_options(scan_state);

 return PSQL_CMD_SKIP_LINE;
}
