
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
struct TYPE_6__ {int quiet; TYPE_2__ popt; } ;
typedef int PsqlScanState ;


 int OT_NORMAL ;
 int PSQL_CMD_ERROR ;
 int PSQL_CMD_SKIP_LINE ;
 char* _ (char*) ;
 int expand_tilde (char**) ;
 int free (char*) ;
 int ignore_slash_options (int ) ;
 int printHistory (char*,int ) ;
 int printf (char*,char*) ;
 TYPE_3__ pset ;
 char* psql_scan_slash_option (int ,int ,int *,int) ;
 int putchar (char) ;

__attribute__((used)) static backslashResult
exec_command_s(PsqlScanState scan_state, bool active_branch)
{
 bool success = 1;

 if (active_branch)
 {
  char *fname = psql_scan_slash_option(scan_state,
               OT_NORMAL, ((void*)0), 1);

  expand_tilde(&fname);
  success = printHistory(fname, pset.popt.topt.pager);
  if (success && !pset.quiet && fname)
   printf(_("Wrote history to file \"%s\".\n"), fname);
  if (!fname)
   putchar('\n');
  free(fname);
 }
 else
  ignore_slash_options(scan_state);

 return success ? PSQL_CMD_SKIP_LINE : PSQL_CMD_ERROR;
}
