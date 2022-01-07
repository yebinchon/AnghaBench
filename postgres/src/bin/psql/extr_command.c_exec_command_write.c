
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int backslashResult ;
struct TYPE_4__ {scalar_t__ len; char* data; } ;
typedef int PsqlScanState ;
typedef TYPE_1__* PQExpBuffer ;
typedef int FILE ;


 int EOF ;
 int OT_FILEPIPE ;
 int PSQL_CMD_ERROR ;
 int PSQL_CMD_SKIP_LINE ;
 int canonicalize_path (char*) ;
 int disable_sigpipe_trap () ;
 int expand_tilde (char**) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int *,char*,char*) ;
 int free (char*) ;
 int ignore_slash_filepipe (int ) ;
 int pclose (int *) ;
 int pg_log_error (char*,...) ;
 int * popen (char*,char*) ;
 char* psql_scan_slash_option (int ,int ,int *,int) ;
 int restore_sigpipe_trap () ;

__attribute__((used)) static backslashResult
exec_command_write(PsqlScanState scan_state, bool active_branch,
       const char *cmd,
       PQExpBuffer query_buf, PQExpBuffer previous_buf)
{
 backslashResult status = PSQL_CMD_SKIP_LINE;

 if (active_branch)
 {
  char *fname = psql_scan_slash_option(scan_state,
               OT_FILEPIPE, ((void*)0), 1);
  FILE *fd = ((void*)0);
  bool is_pipe = 0;

  if (!query_buf)
  {
   pg_log_error("no query buffer");
   status = PSQL_CMD_ERROR;
  }
  else
  {
   if (!fname)
   {
    pg_log_error("\\%s: missing required argument", cmd);
    status = PSQL_CMD_ERROR;
   }
   else
   {
    expand_tilde(&fname);
    if (fname[0] == '|')
    {
     is_pipe = 1;
     disable_sigpipe_trap();
     fd = popen(&fname[1], "w");
    }
    else
    {
     canonicalize_path(fname);
     fd = fopen(fname, "w");
    }
    if (!fd)
    {
     pg_log_error("%s: %m", fname);
     status = PSQL_CMD_ERROR;
    }
   }
  }

  if (fd)
  {
   int result;







   if (query_buf && query_buf->len > 0)
    fprintf(fd, "%s\n", query_buf->data);
   else if (previous_buf && previous_buf->len > 0)
    fprintf(fd, "%s\n", previous_buf->data);

   if (is_pipe)
    result = pclose(fd);
   else
    result = fclose(fd);

   if (result == EOF)
   {
    pg_log_error("%s: %m", fname);
    status = PSQL_CMD_ERROR;
   }
  }

  if (is_pipe)
   restore_sigpipe_trap();

  free(fname);
 }
 else
  ignore_slash_filepipe(scan_state);

 return status;
}
