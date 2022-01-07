
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int sverbuf ;
typedef scalar_t__ backslashResult ;
struct TYPE_9__ {int sversion; } ;
struct TYPE_8__ {char* data; } ;
typedef int PsqlScanState ;
typedef TYPE_1__* PQExpBuffer ;
typedef int Oid ;
typedef int EditableObjectType ;


 int EditableFunction ;
 int EditableView ;
 int InvalidOid ;
 int OT_WHOLE_LINE ;
 scalar_t__ PSQL_CMD_ERROR ;
 scalar_t__ PSQL_CMD_NEWEDIT ;
 scalar_t__ PSQL_CMD_SKIP_LINE ;
 int _ (char*) ;
 int appendPQExpBufferStr (TYPE_1__*,char*) ;
 int do_edit (int *,TYPE_1__*,int,int*) ;
 int formatPGVersionNumber (int,int,char*,int) ;
 int free (char*) ;
 int get_create_object_cmd (int ,int ,TYPE_1__*) ;
 int ignore_slash_whole_line (int ) ;
 int lookup_object_oid (int ,char*,int *) ;
 int pg_log_error (char*,...) ;
 TYPE_3__ pset ;
 char* psql_scan_slash_option (int ,int ,int *,int) ;
 int puts (int ) ;
 int resetPQExpBuffer (TYPE_1__*) ;
 char* strchr (char const*,char) ;
 int strip_lineno_from_objdesc (char*) ;
 scalar_t__ strncmp (char const*,char*,int) ;

__attribute__((used)) static backslashResult
exec_command_ef_ev(PsqlScanState scan_state, bool active_branch,
       PQExpBuffer query_buf, bool is_func)
{
 backslashResult status = PSQL_CMD_SKIP_LINE;

 if (active_branch)
 {
  char *obj_desc = psql_scan_slash_option(scan_state,
               OT_WHOLE_LINE,
               ((void*)0), 1);
  int lineno = -1;

  if (pset.sversion < (is_func ? 80400 : 70400))
  {
   char sverbuf[32];

   formatPGVersionNumber(pset.sversion, 0,
          sverbuf, sizeof(sverbuf));
   if (is_func)
    pg_log_error("The server (version %s) does not support editing function source.",
        sverbuf);
   else
    pg_log_error("The server (version %s) does not support editing view definitions.",
        sverbuf);
   status = PSQL_CMD_ERROR;
  }
  else if (!query_buf)
  {
   pg_log_error("no query buffer");
   status = PSQL_CMD_ERROR;
  }
  else
  {
   Oid obj_oid = InvalidOid;
   EditableObjectType eot = is_func ? EditableFunction : EditableView;

   lineno = strip_lineno_from_objdesc(obj_desc);
   if (lineno == 0)
   {

    status = PSQL_CMD_ERROR;
   }
   else if (!obj_desc)
   {

    resetPQExpBuffer(query_buf);
    if (is_func)
     appendPQExpBufferStr(query_buf,
           "CREATE FUNCTION ( )\n"
           " RETURNS \n"
           " LANGUAGE \n"
           " -- common options:  IMMUTABLE  STABLE  STRICT  SECURITY DEFINER\n"
           "AS $function$\n"
           "\n$function$\n");
    else
     appendPQExpBufferStr(query_buf,
           "CREATE VIEW  AS\n"
           " SELECT \n"
           "  -- something...\n");
   }
   else if (!lookup_object_oid(eot, obj_desc, &obj_oid))
   {

    status = PSQL_CMD_ERROR;
   }
   else if (!get_create_object_cmd(eot, obj_oid, query_buf))
   {

    status = PSQL_CMD_ERROR;
   }
   else if (is_func && lineno > 0)
   {
    const char *lines = query_buf->data;

    while (*lines != '\0')
    {
     if (strncmp(lines, "AS ", 3) == 0)
      break;
     lineno++;

     lines = strchr(lines, '\n');
     if (!lines)
      break;
     lines++;
    }
   }
  }

  if (status != PSQL_CMD_ERROR)
  {
   bool edited = 0;

   if (!do_edit(((void*)0), query_buf, lineno, &edited))
    status = PSQL_CMD_ERROR;
   else if (!edited)
    puts(_("No changes"));
   else
    status = PSQL_CMD_NEWEDIT;
  }

  if (obj_desc)
   free(obj_desc);
 }
 else
  ignore_slash_whole_line(scan_state);

 return status;
}
