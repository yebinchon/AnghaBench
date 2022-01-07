
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int backslashResult ;
struct TYPE_2__ {int timing; int quiet; } ;
typedef int PsqlScanState ;


 int OT_NORMAL ;
 int PSQL_CMD_ERROR ;
 int PSQL_CMD_SKIP_LINE ;
 int ParseVariableBool (char*,char*,int*) ;
 int _ (char*) ;
 int free (char*) ;
 int ignore_slash_options (int ) ;
 TYPE_1__ pset ;
 char* psql_scan_slash_option (int ,int ,int *,int) ;
 int puts (int ) ;

__attribute__((used)) static backslashResult
exec_command_timing(PsqlScanState scan_state, bool active_branch)
{
 bool success = 1;

 if (active_branch)
 {
  char *opt = psql_scan_slash_option(scan_state,
             OT_NORMAL, ((void*)0), 0);

  if (opt)
   success = ParseVariableBool(opt, "\\timing", &pset.timing);
  else
   pset.timing = !pset.timing;
  if (!pset.quiet)
  {
   if (pset.timing)
    puts(_("Timing is on."));
   else
    puts(_("Timing is off."));
  }
  free(opt);
 }
 else
  ignore_slash_options(scan_state);

 return success ? PSQL_CMD_SKIP_LINE : PSQL_CMD_ERROR;
}
