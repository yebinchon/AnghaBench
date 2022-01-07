
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {int sversion; int encoding; int db; } ;
struct TYPE_12__ {char* data; int len; } ;
typedef TYPE_1__* PQExpBuffer ;
typedef int PGresult ;
typedef int Oid ;
typedef int EditableObjectType ;




 scalar_t__ PGRES_TUPLES_OK ;
 int PQclear (int *) ;
 int * PQexec (int ,char*) ;
 char* PQgetvalue (int *,int ,int) ;
 int PQntuples (int *) ;
 scalar_t__ PQresultStatus (int *) ;


 int appendPQExpBuffer (TYPE_1__*,char*,char*) ;
 int appendPQExpBufferChar (TYPE_1__*,char) ;
 int appendPQExpBufferStr (TYPE_1__*,char*) ;
 int appendReloptionsArray (TYPE_1__*,char*,char*,int ,int ) ;
 TYPE_1__* createPQExpBuffer () ;
 int destroyPQExpBuffer (TYPE_1__*) ;
 int echo_hidden_command (char*) ;
 char* fmtId (char*) ;
 int minimal_error_message (int *) ;
 int pg_log_error (char*,...) ;
 int printfPQExpBuffer (TYPE_1__*,char*,int ) ;
 TYPE_3__ pset ;
 int resetPQExpBuffer (TYPE_1__*) ;
 int standard_strings () ;
 int strlen (char*) ;

__attribute__((used)) static bool
get_create_object_cmd(EditableObjectType obj_type, Oid oid,
       PQExpBuffer buf)
{
 bool result = 1;
 PQExpBuffer query = createPQExpBuffer();
 PGresult *res;

 switch (obj_type)
 {
  case 131:
   printfPQExpBuffer(query,
         "SELECT pg_catalog.pg_get_functiondef(%u)",
         oid);
   break;

  case 130:
   if (pset.sversion >= 90400)
   {
    printfPQExpBuffer(query,
          "SELECT nspname, relname, relkind, "
          "pg_catalog.pg_get_viewdef(c.oid, true), "
          "pg_catalog.array_remove(pg_catalog.array_remove(c.reloptions,'check_option=local'),'check_option=cascaded') AS reloptions, "
          "CASE WHEN 'check_option=local' = ANY (c.reloptions) THEN 'LOCAL'::text "
          "WHEN 'check_option=cascaded' = ANY (c.reloptions) THEN 'CASCADED'::text ELSE NULL END AS checkoption "
          "FROM pg_catalog.pg_class c "
          "LEFT JOIN pg_catalog.pg_namespace n "
          "ON c.relnamespace = n.oid WHERE c.oid = %u",
          oid);
   }
   else if (pset.sversion >= 90200)
   {
    printfPQExpBuffer(query,
          "SELECT nspname, relname, relkind, "
          "pg_catalog.pg_get_viewdef(c.oid, true), "
          "c.reloptions AS reloptions, "
          "NULL AS checkoption "
          "FROM pg_catalog.pg_class c "
          "LEFT JOIN pg_catalog.pg_namespace n "
          "ON c.relnamespace = n.oid WHERE c.oid = %u",
          oid);
   }
   else
   {
    printfPQExpBuffer(query,
          "SELECT nspname, relname, relkind, "
          "pg_catalog.pg_get_viewdef(c.oid, true), "
          "NULL AS reloptions, "
          "NULL AS checkoption "
          "FROM pg_catalog.pg_class c "
          "LEFT JOIN pg_catalog.pg_namespace n "
          "ON c.relnamespace = n.oid WHERE c.oid = %u",
          oid);
   }
   break;
 }

 if (!echo_hidden_command(query->data))
 {
  destroyPQExpBuffer(query);
  return 0;
 }
 res = PQexec(pset.db, query->data);
 if (PQresultStatus(res) == PGRES_TUPLES_OK && PQntuples(res) == 1)
 {
  resetPQExpBuffer(buf);
  switch (obj_type)
  {
   case 131:
    appendPQExpBufferStr(buf, PQgetvalue(res, 0, 0));
    break;

   case 130:
    {
     char *nspname = PQgetvalue(res, 0, 0);
     char *relname = PQgetvalue(res, 0, 1);
     char *relkind = PQgetvalue(res, 0, 2);
     char *viewdef = PQgetvalue(res, 0, 3);
     char *reloptions = PQgetvalue(res, 0, 4);
     char *checkoption = PQgetvalue(res, 0, 5);







     switch (relkind[0])
     {





      case 128:
       appendPQExpBufferStr(buf, "CREATE OR REPLACE VIEW ");
       break;
      default:
       pg_log_error("\"%s.%s\" is not a view",
           nspname, relname);
       result = 0;
       break;
     }
     appendPQExpBuffer(buf, "%s.", fmtId(nspname));
     appendPQExpBufferStr(buf, fmtId(relname));


     if (reloptions != ((void*)0) && strlen(reloptions) > 2)
     {
      appendPQExpBufferStr(buf, "\n WITH (");
      if (!appendReloptionsArray(buf, reloptions, "",
               pset.encoding,
               standard_strings()))
      {
       pg_log_error("could not parse reloptions array");
       result = 0;
      }
      appendPQExpBufferChar(buf, ')');
     }


     appendPQExpBuffer(buf, " AS\n%s", viewdef);


     if (buf->len > 0 && buf->data[buf->len - 1] == ';')
      buf->data[--(buf->len)] = '\0';


     if (checkoption && checkoption[0] != '\0')
      appendPQExpBuffer(buf, "\n WITH %s CHECK OPTION",
            checkoption);
    }
    break;
  }

  if (buf->len > 0 && buf->data[buf->len - 1] != '\n')
   appendPQExpBufferChar(buf, '\n');
 }
 else
 {
  minimal_error_message(res);
  result = 0;
 }

 PQclear(res);
 destroyPQExpBuffer(query);

 return result;
}
