
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int backslashResult ;
struct TYPE_2__ {int g_expanded; int * gfname; } ;
typedef int PsqlScanState ;


 int OT_FILEPIPE ;
 int PSQL_CMD_SEND ;
 int PSQL_CMD_SKIP_LINE ;
 int expand_tilde (char**) ;
 int free (char*) ;
 int ignore_slash_filepipe (int ) ;
 int * pg_strdup (char*) ;
 TYPE_1__ pset ;
 char* psql_scan_slash_option (int ,int ,int *,int) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static backslashResult
exec_command_g(PsqlScanState scan_state, bool active_branch, const char *cmd)
{
 backslashResult status = PSQL_CMD_SKIP_LINE;

 if (active_branch)
 {
  char *fname = psql_scan_slash_option(scan_state,
               OT_FILEPIPE, ((void*)0), 0);

  if (!fname)
   pset.gfname = ((void*)0);
  else
  {
   expand_tilde(&fname);
   pset.gfname = pg_strdup(fname);
  }
  free(fname);
  if (strcmp(cmd, "gx") == 0)
   pset.g_expanded = 1;
  status = PSQL_CMD_SEND;
 }
 else
  ignore_slash_filepipe(scan_state);

 return status;
}
