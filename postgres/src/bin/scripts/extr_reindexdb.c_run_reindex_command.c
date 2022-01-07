
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {char* data; } ;
typedef int ReindexType ;
typedef TYPE_1__ PQExpBufferData ;
typedef int PGconn ;


 int Assert (char const*) ;
 int PQdb (int *) ;
 int PQerrorMessage (int *) ;
 int PQfinish (int *) ;
 int PQsendQuery (int *,char*) ;





 int appendPQExpBufferChar (TYPE_1__*,char) ;
 int appendPQExpBufferStr (TYPE_1__*,char const*) ;
 int appendQualifiedRelation (TYPE_1__*,char const*,int *,int) ;
 int executeMaintenanceCommand (int *,char*,int) ;
 int exit (int) ;
 char const* fmtId (char const*) ;
 int initPQExpBuffer (TYPE_1__*) ;
 int pg_log_error (char*,char const*,int ,...) ;
 int printf (char*,char*) ;
 int termPQExpBuffer (TYPE_1__*) ;

__attribute__((used)) static void
run_reindex_command(PGconn *conn, ReindexType type, const char *name,
     bool echo, bool verbose, bool concurrently, bool async)
{
 PQExpBufferData sql;
 bool status;

 Assert(name);


 initPQExpBuffer(&sql);

 appendPQExpBufferStr(&sql, "REINDEX ");

 if (verbose)
  appendPQExpBufferStr(&sql, "(VERBOSE) ");


 switch (type)
 {
  case 132:
   appendPQExpBufferStr(&sql, "DATABASE ");
   break;
  case 131:
   appendPQExpBufferStr(&sql, "INDEX ");
   break;
  case 130:
   appendPQExpBufferStr(&sql, "SCHEMA ");
   break;
  case 129:
   appendPQExpBufferStr(&sql, "SYSTEM ");
   break;
  case 128:
   appendPQExpBufferStr(&sql, "TABLE ");
   break;
 }

 if (concurrently)
  appendPQExpBufferStr(&sql, "CONCURRENTLY ");


 switch (type)
 {
  case 132:
  case 129:
   appendPQExpBufferStr(&sql, fmtId(name));
   break;
  case 131:
  case 128:
   appendQualifiedRelation(&sql, name, conn, echo);
   break;
  case 130:
   appendPQExpBufferStr(&sql, name);
   break;
 }


 appendPQExpBufferChar(&sql, ';');

 if (async)
 {
  if (echo)
   printf("%s\n", sql.data);

  status = PQsendQuery(conn, sql.data) == 1;
 }
 else
  status = executeMaintenanceCommand(conn, sql.data, echo);

 if (!status)
 {
  switch (type)
  {
   case 132:
    pg_log_error("reindexing of database \"%s\" failed: %s",
        PQdb(conn), PQerrorMessage(conn));
    break;
   case 131:
    pg_log_error("reindexing of index \"%s\" in database \"%s\" failed: %s",
        name, PQdb(conn), PQerrorMessage(conn));
    break;
   case 130:
    pg_log_error("reindexing of schema \"%s\" in database \"%s\" failed: %s",
        name, PQdb(conn), PQerrorMessage(conn));
    break;
   case 129:
    pg_log_error("reindexing of system catalogs on database \"%s\" failed: %s",
        PQdb(conn), PQerrorMessage(conn));
    break;
   case 128:
    pg_log_error("reindexing of table \"%s\" in database \"%s\" failed: %s",
        name, PQdb(conn), PQerrorMessage(conn));
    break;
  }
  if (!async)
  {
   PQfinish(conn);
   exit(1);
  }
 }

 termPQExpBuffer(&sql);
}
