
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int data; } ;
typedef TYPE_1__ PQExpBufferData ;
typedef TYPE_1__* PQExpBuffer ;
typedef int PGresult ;
typedef int PGconn ;


 int ALWAYS_SECURE_SEARCH_PATH_SQL ;
 int PQclear (int *) ;
 int PQclientEncoding (int *) ;
 int PQfinish (int *) ;
 int PQgetvalue (int *,int ,int) ;
 int PQntuples (int *) ;
 int appendPQExpBufferStr (TYPE_1__*,char const*) ;
 int appendStringLiteralConn (TYPE_1__*,char*,int *) ;
 int executeCommand (int *,char*,int) ;
 int * executeQuery (int *,int ,int) ;
 int exit (int) ;
 char const* fmtQualifiedId (int ,int ) ;
 int initPQExpBuffer (TYPE_1__*) ;
 int ngettext (char*,char*,int) ;
 int pg_free (char*) ;
 int pg_log_error (int ,int,int ) ;
 int splitTableColumnsSpec (char const*,int ,char**,char const**) ;
 int termPQExpBuffer (TYPE_1__*) ;

void
appendQualifiedRelation(PQExpBuffer buf, const char *spec,
      PGconn *conn, bool echo)
{
 char *table;
 const char *columns;
 PQExpBufferData sql;
 PGresult *res;
 int ntups;

 splitTableColumnsSpec(spec, PQclientEncoding(conn), &table, &columns);






 initPQExpBuffer(&sql);
 appendPQExpBufferStr(&sql,
       "SELECT c.relname, ns.nspname\n"
       " FROM pg_catalog.pg_class c,"
       " pg_catalog.pg_namespace ns\n"
       " WHERE c.relnamespace OPERATOR(pg_catalog.=) ns.oid\n"
       "  AND c.oid OPERATOR(pg_catalog.=) ");
 appendStringLiteralConn(&sql, table, conn);
 appendPQExpBufferStr(&sql, "::pg_catalog.regclass;");

 executeCommand(conn, "RESET search_path;", echo);







 res = executeQuery(conn, sql.data, echo);
 ntups = PQntuples(res);
 if (ntups != 1)
 {
  pg_log_error(ngettext("query returned %d row instead of one: %s",
         "query returned %d rows instead of one: %s",
         ntups),
      ntups, sql.data);
  PQfinish(conn);
  exit(1);
 }
 appendPQExpBufferStr(buf,
       fmtQualifiedId(PQgetvalue(res, 0, 1),
          PQgetvalue(res, 0, 0)));
 appendPQExpBufferStr(buf, columns);
 PQclear(res);
 termPQExpBuffer(&sql);
 pg_free(table);

 PQclear(executeQuery(conn, ALWAYS_SECURE_SEARCH_PATH_SQL, echo));
}
