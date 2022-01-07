
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int backslashResult ;
struct TYPE_2__ {int vars; int inputfile; } ;
typedef int PsqlScanState ;


 int OT_NORMAL ;
 int PSQL_CMD_ERROR ;
 int PSQL_CMD_SKIP_LINE ;
 int SetVariable (int ,char*,char*) ;
 int fflush (int ) ;
 int fputs (char*,int ) ;
 int free (char*) ;
 char* gets_fromFile (int ) ;
 int ignore_slash_options (int ) ;
 int pg_log_error (char*,char const*) ;
 scalar_t__ pg_malloc (int) ;
 TYPE_1__ pset ;
 char* psql_scan_slash_option (int ,int ,int *,int) ;
 int simple_prompt (char*,char*,int,int) ;
 int stdin ;
 int stdout ;

__attribute__((used)) static backslashResult
exec_command_prompt(PsqlScanState scan_state, bool active_branch,
     const char *cmd)
{
 bool success = 1;

 if (active_branch)
 {
  char *opt,
       *prompt_text = ((void*)0);
  char *arg1,
       *arg2;

  arg1 = psql_scan_slash_option(scan_state, OT_NORMAL, ((void*)0), 0);
  arg2 = psql_scan_slash_option(scan_state, OT_NORMAL, ((void*)0), 0);

  if (!arg1)
  {
   pg_log_error("\\%s: missing required argument", cmd);
   success = 0;
  }
  else
  {
   char *result;

   if (arg2)
   {
    prompt_text = arg1;
    opt = arg2;
   }
   else
    opt = arg1;

   if (!pset.inputfile)
   {
    result = (char *) pg_malloc(4096);
    simple_prompt(prompt_text, result, 4096, 1);
   }
   else
   {
    if (prompt_text)
    {
     fputs(prompt_text, stdout);
     fflush(stdout);
    }
    result = gets_fromFile(stdin);
    if (!result)
    {
     pg_log_error("\\%s: could not read value for variable",
         cmd);
     success = 0;
    }
   }

   if (result &&
    !SetVariable(pset.vars, opt, result))
    success = 0;

   if (result)
    free(result);
   if (prompt_text)
    free(prompt_text);
   free(opt);
  }
 }
 else
  ignore_slash_options(scan_state);

 return success ? PSQL_CMD_SKIP_LINE : PSQL_CMD_ERROR;
}
