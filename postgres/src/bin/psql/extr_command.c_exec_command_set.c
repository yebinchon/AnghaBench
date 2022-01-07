
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int backslashResult ;
struct TYPE_2__ {int vars; } ;
typedef int PsqlScanState ;


 int OT_NORMAL ;
 int PSQL_CMD_ERROR ;
 int PSQL_CMD_SKIP_LINE ;
 int PrintVariables (int ) ;
 int SetVariable (int ,char*,char*) ;
 int free (char*) ;
 int ignore_slash_options (int ) ;
 char* pg_realloc (char*,scalar_t__) ;
 char* pg_strdup (char*) ;
 TYPE_1__ pset ;
 char* psql_scan_slash_option (int ,int ,int *,int) ;
 int strcat (char*,char*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static backslashResult
exec_command_set(PsqlScanState scan_state, bool active_branch)
{
 bool success = 1;

 if (active_branch)
 {
  char *opt0 = psql_scan_slash_option(scan_state,
              OT_NORMAL, ((void*)0), 0);

  if (!opt0)
  {

   PrintVariables(pset.vars);
   success = 1;
  }
  else
  {



   char *newval;
   char *opt;

   opt = psql_scan_slash_option(scan_state,
           OT_NORMAL, ((void*)0), 0);
   newval = pg_strdup(opt ? opt : "");
   free(opt);

   while ((opt = psql_scan_slash_option(scan_state,
             OT_NORMAL, ((void*)0), 0)))
   {
    newval = pg_realloc(newval, strlen(newval) + strlen(opt) + 1);
    strcat(newval, opt);
    free(opt);
   }

   if (!SetVariable(pset.vars, opt0, newval))
    success = 0;

   free(newval);
  }
  free(opt0);
 }
 else
  ignore_slash_options(scan_state);

 return success ? PSQL_CMD_SKIP_LINE : PSQL_CMD_ERROR;
}
