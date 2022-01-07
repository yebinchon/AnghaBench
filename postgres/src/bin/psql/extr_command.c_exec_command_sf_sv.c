
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int sverbuf ;
typedef int backslashResult ;
struct TYPE_8__ {int topt; } ;
struct TYPE_10__ {int sversion; int * queryFout; TYPE_1__ popt; } ;
struct TYPE_9__ {int data; } ;
typedef int PsqlScanState ;
typedef TYPE_2__* PQExpBuffer ;
typedef int Oid ;
typedef int FILE ;
typedef int EditableObjectType ;


 int ClosePager (int *) ;
 int EditableFunction ;
 int EditableView ;
 int InvalidOid ;
 int OT_WHOLE_LINE ;
 int PSQL_CMD_ERROR ;
 int PSQL_CMD_SKIP_LINE ;
 int * PageOutput (int,int *) ;
 int count_lines_in_buf (TYPE_2__*) ;
 TYPE_2__* createPQExpBuffer () ;
 int destroyPQExpBuffer (TYPE_2__*) ;
 int formatPGVersionNumber (int,int,char*,int) ;
 int fputs (int ,int *) ;
 int free (char*) ;
 int get_create_object_cmd (int ,int ,TYPE_2__*) ;
 int ignore_slash_whole_line (int ) ;
 int lookup_object_oid (int ,char*,int *) ;
 int pg_log_error (char*,...) ;
 int print_with_linenumbers (int *,int ,char*) ;
 TYPE_3__ pset ;
 char* psql_scan_slash_option (int ,int ,int *,int) ;
 int * stdout ;
 int * strchr (char const*,char) ;

__attribute__((used)) static backslashResult
exec_command_sf_sv(PsqlScanState scan_state, bool active_branch,
       const char *cmd, bool is_func)
{
 backslashResult status = PSQL_CMD_SKIP_LINE;

 if (active_branch)
 {
  bool show_linenumbers = (strchr(cmd, '+') != ((void*)0));
  PQExpBuffer buf;
  char *obj_desc;
  Oid obj_oid = InvalidOid;
  EditableObjectType eot = is_func ? EditableFunction : EditableView;

  buf = createPQExpBuffer();
  obj_desc = psql_scan_slash_option(scan_state,
            OT_WHOLE_LINE, ((void*)0), 1);
  if (pset.sversion < (is_func ? 80400 : 70400))
  {
   char sverbuf[32];

   formatPGVersionNumber(pset.sversion, 0,
          sverbuf, sizeof(sverbuf));
   if (is_func)
    pg_log_error("The server (version %s) does not support showing function source.",
        sverbuf);
   else
    pg_log_error("The server (version %s) does not support showing view definitions.",
        sverbuf);
   status = PSQL_CMD_ERROR;
  }
  else if (!obj_desc)
  {
   if (is_func)
    pg_log_error("function name is required");
   else
    pg_log_error("view name is required");
   status = PSQL_CMD_ERROR;
  }
  else if (!lookup_object_oid(eot, obj_desc, &obj_oid))
  {

   status = PSQL_CMD_ERROR;
  }
  else if (!get_create_object_cmd(eot, obj_oid, buf))
  {

   status = PSQL_CMD_ERROR;
  }
  else
  {
   FILE *output;
   bool is_pager;


   if (pset.queryFout == stdout)
   {

    int lineno = count_lines_in_buf(buf);

    output = PageOutput(lineno, &(pset.popt.topt));
    is_pager = 1;
   }
   else
   {

    output = pset.queryFout;
    is_pager = 0;
   }

   if (show_linenumbers)
   {







    print_with_linenumbers(output, buf->data,
            is_func ? "AS " : ((void*)0));
   }
   else
   {

    fputs(buf->data, output);
   }

   if (is_pager)
    ClosePager(output);
  }

  if (obj_desc)
   free(obj_desc);
  destroyPQExpBuffer(buf);
 }
 else
  ignore_slash_whole_line(scan_state);

 return status;
}
