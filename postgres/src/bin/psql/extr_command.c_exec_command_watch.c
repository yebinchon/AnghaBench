
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int backslashResult ;
typedef int PsqlScanState ;
typedef int PQExpBuffer ;


 int OT_NORMAL ;
 int PSQL_CMD_ERROR ;
 int PSQL_CMD_SKIP_LINE ;
 int copy_previous_query (int ,int ) ;
 int do_watch (int ,double) ;
 int free (char*) ;
 int ignore_slash_options (int ) ;
 int psql_scan_reset (int ) ;
 char* psql_scan_slash_option (int ,int ,int *,int) ;
 int resetPQExpBuffer (int ) ;
 double strtod (char*,int *) ;

__attribute__((used)) static backslashResult
exec_command_watch(PsqlScanState scan_state, bool active_branch,
       PQExpBuffer query_buf, PQExpBuffer previous_buf)
{
 bool success = 1;

 if (active_branch)
 {
  char *opt = psql_scan_slash_option(scan_state,
             OT_NORMAL, ((void*)0), 1);
  double sleep = 2;


  if (opt)
  {
   sleep = strtod(opt, ((void*)0));
   if (sleep <= 0)
    sleep = 1;
   free(opt);
  }


  copy_previous_query(query_buf, previous_buf);

  success = do_watch(query_buf, sleep);


  resetPQExpBuffer(query_buf);
  psql_scan_reset(scan_state);
 }
 else
  ignore_slash_options(scan_state);

 return success ? PSQL_CMD_SKIP_LINE : PSQL_CMD_ERROR;
}
