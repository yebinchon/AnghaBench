
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ backslashResult ;
struct TYPE_2__ {int queryFout; scalar_t__ cur_cmd_interactive; } ;
typedef int * PsqlScanState ;
typedef int PQExpBuffer ;
typedef int * ConditionalStack ;


 int Assert (int ) ;
 int IFSTATE_IGNORED ;
 int OT_NORMAL ;
 int OT_WHOLE_LINE ;
 scalar_t__ PSQL_CMD_ERROR ;
 scalar_t__ PSQL_CMD_UNKNOWN ;
 int conditional_active (int *) ;
 int conditional_stack_pop (int *) ;
 int conditional_stack_push (int *,int ) ;
 scalar_t__ exec_command (char*,int *,int *,int ,int ) ;
 int fflush (int ) ;
 int free (char*) ;
 int pg_log_error (char*,char*) ;
 int pg_log_info (char*) ;
 int pg_log_warning (char*,char*,char*) ;
 TYPE_1__ pset ;
 char* psql_scan_slash_command (int *) ;
 int psql_scan_slash_command_end (int *) ;
 char* psql_scan_slash_option (int *,int ,int *,int) ;

backslashResult
HandleSlashCmds(PsqlScanState scan_state,
    ConditionalStack cstack,
    PQExpBuffer query_buf,
    PQExpBuffer previous_buf)
{
 backslashResult status;
 char *cmd;
 char *arg;

 Assert(scan_state != ((void*)0));
 Assert(cstack != ((void*)0));


 cmd = psql_scan_slash_command(scan_state);


 status = exec_command(cmd, scan_state, cstack, query_buf, previous_buf);

 if (status == PSQL_CMD_UNKNOWN)
 {
  pg_log_error("invalid command \\%s", cmd);
  if (pset.cur_cmd_interactive)
   pg_log_info("Try \\? for help.");
  status = PSQL_CMD_ERROR;
 }

 if (status != PSQL_CMD_ERROR)
 {





  bool active_branch = conditional_active(cstack);

  conditional_stack_push(cstack, IFSTATE_IGNORED);
  while ((arg = psql_scan_slash_option(scan_state,
            OT_NORMAL, ((void*)0), 0)))
  {
   if (active_branch)
    pg_log_warning("\\%s: extra argument \"%s\" ignored", cmd, arg);
   free(arg);
  }
  conditional_stack_pop(cstack);
 }
 else
 {

  while ((arg = psql_scan_slash_option(scan_state,
            OT_WHOLE_LINE, ((void*)0), 0)))
   free(arg);
 }


 psql_scan_slash_command_end(scan_state);

 free(cmd);


 fflush(pset.queryFout);

 return status;
}
