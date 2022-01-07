
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int backslashResult ;
struct TYPE_2__ {int * queryFout; } ;
typedef int PsqlScanState ;
typedef int FILE ;


 int OT_NORMAL ;
 int PSQL_CMD_SKIP_LINE ;
 int fputc (char,int *) ;
 int fputs (char*,int *) ;
 int free (char*) ;
 int ignore_slash_options (int ) ;
 TYPE_1__ pset ;
 char* psql_scan_slash_option (int ,int ,char*,int) ;
 int * stderr ;
 int * stdout ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static backslashResult
exec_command_echo(PsqlScanState scan_state, bool active_branch, const char *cmd)
{
 if (active_branch)
 {
  char *value;
  char quoted;
  bool no_newline = 0;
  bool first = 1;
  FILE *fout;

  if (strcmp(cmd, "qecho") == 0)
   fout = pset.queryFout;
  else if (strcmp(cmd, "warn") == 0)
   fout = stderr;
  else
   fout = stdout;

  while ((value = psql_scan_slash_option(scan_state,
              OT_NORMAL, &quoted, 0)))
  {
   if (first && !no_newline && !quoted && strcmp(value, "-n") == 0)
    no_newline = 1;
   else
   {
    if (first)
     first = 0;
    else
     fputc(' ', fout);
    fputs(value, fout);
   }
   free(value);
  }
  if (!no_newline)
   fputs("\n", fout);
 }
 else
  ignore_slash_options(scan_state);

 return PSQL_CMD_SKIP_LINE;
}
