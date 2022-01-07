
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ backslashResult ;
typedef int PsqlScanState ;
typedef int PQExpBuffer ;


 int OT_NORMAL ;
 scalar_t__ PSQL_CMD_ERROR ;
 scalar_t__ PSQL_CMD_NEWEDIT ;
 scalar_t__ PSQL_CMD_SKIP_LINE ;
 int atoi (char*) ;
 int canonicalize_path (char*) ;
 int copy_previous_query (int ,int ) ;
 scalar_t__ do_edit (char*,int ,int,int *) ;
 int expand_tilde (char**) ;
 int free (char*) ;
 int ignore_slash_options (int ) ;
 int pg_log_error (char*,...) ;
 char* psql_scan_slash_option (int ,int ,int *,int) ;
 scalar_t__ strlen (char*) ;
 scalar_t__ strspn (char*,char*) ;

__attribute__((used)) static backslashResult
exec_command_edit(PsqlScanState scan_state, bool active_branch,
      PQExpBuffer query_buf, PQExpBuffer previous_buf)
{
 backslashResult status = PSQL_CMD_SKIP_LINE;

 if (active_branch)
 {
  if (!query_buf)
  {
   pg_log_error("no query buffer");
   status = PSQL_CMD_ERROR;
  }
  else
  {
   char *fname;
   char *ln = ((void*)0);
   int lineno = -1;

   fname = psql_scan_slash_option(scan_state,
             OT_NORMAL, ((void*)0), 1);
   if (fname)
   {

    ln = psql_scan_slash_option(scan_state,
           OT_NORMAL, ((void*)0), 1);
    if (ln == ((void*)0))
    {

     if (fname[0] &&
      strspn(fname, "0123456789") == strlen(fname))
     {

      ln = fname;
      fname = ((void*)0);
     }
    }
   }
   if (ln)
   {
    lineno = atoi(ln);
    if (lineno < 1)
    {
     pg_log_error("invalid line number: %s", ln);
     status = PSQL_CMD_ERROR;
    }
   }
   if (status != PSQL_CMD_ERROR)
   {
    expand_tilde(&fname);
    if (fname)
     canonicalize_path(fname);


    copy_previous_query(query_buf, previous_buf);

    if (do_edit(fname, query_buf, lineno, ((void*)0)))
     status = PSQL_CMD_NEWEDIT;
    else
     status = PSQL_CMD_ERROR;
   }
   if (fname)
    free(fname);
   if (ln)
    free(ln);
  }
 }
 else
  ignore_slash_options(scan_state);

 return status;
}
