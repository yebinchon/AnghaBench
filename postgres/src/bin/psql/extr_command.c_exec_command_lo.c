
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int backslashResult ;
typedef int PsqlScanState ;


 int OT_NORMAL ;
 int PSQL_CMD_ERROR ;
 int PSQL_CMD_SKIP_LINE ;
 int PSQL_CMD_UNKNOWN ;
 int do_lo_export (char*,char*) ;
 int do_lo_import (char*,char*) ;
 int do_lo_list () ;
 int do_lo_unlink (char*) ;
 int expand_tilde (char**) ;
 int free (char*) ;
 int ignore_slash_options (int ) ;
 int pg_log_error (char*,char const*) ;
 char* psql_scan_slash_option (int ,int ,int *,int) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static backslashResult
exec_command_lo(PsqlScanState scan_state, bool active_branch, const char *cmd)
{
 backslashResult status = PSQL_CMD_SKIP_LINE;
 bool success = 1;

 if (active_branch)
 {
  char *opt1,
       *opt2;

  opt1 = psql_scan_slash_option(scan_state,
           OT_NORMAL, ((void*)0), 1);
  opt2 = psql_scan_slash_option(scan_state,
           OT_NORMAL, ((void*)0), 1);

  if (strcmp(cmd + 3, "export") == 0)
  {
   if (!opt2)
   {
    pg_log_error("\\%s: missing required argument", cmd);
    success = 0;
   }
   else
   {
    expand_tilde(&opt2);
    success = do_lo_export(opt1, opt2);
   }
  }

  else if (strcmp(cmd + 3, "import") == 0)
  {
   if (!opt1)
   {
    pg_log_error("\\%s: missing required argument", cmd);
    success = 0;
   }
   else
   {
    expand_tilde(&opt1);
    success = do_lo_import(opt1, opt2);
   }
  }

  else if (strcmp(cmd + 3, "list") == 0)
   success = do_lo_list();

  else if (strcmp(cmd + 3, "unlink") == 0)
  {
   if (!opt1)
   {
    pg_log_error("\\%s: missing required argument", cmd);
    success = 0;
   }
   else
    success = do_lo_unlink(opt1);
  }

  else
   status = PSQL_CMD_UNKNOWN;

  free(opt1);
  free(opt2);
 }
 else
  ignore_slash_options(scan_state);

 if (!success)
  status = PSQL_CMD_ERROR;

 return status;
}
