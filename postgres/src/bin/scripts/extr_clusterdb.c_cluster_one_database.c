
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef enum trivalue { ____Placeholder_trivalue } trivalue ;
struct TYPE_7__ {int data; } ;
typedef TYPE_1__ PQExpBufferData ;
typedef int PGconn ;


 int PQdb (int *) ;
 int PQerrorMessage (int *) ;
 int PQfinish (int *) ;
 int appendPQExpBufferChar (TYPE_1__*,char) ;
 int appendPQExpBufferStr (TYPE_1__*,char*) ;
 int appendQualifiedRelation (TYPE_1__*,char const*,int *,int) ;
 int * connectDatabase (char const*,char const*,char const*,char const*,int,char const*,int,int,int) ;
 int executeMaintenanceCommand (int *,int ,int) ;
 int exit (int) ;
 int initPQExpBuffer (TYPE_1__*) ;
 int pg_log_error (char*,char const*,int ,...) ;
 int termPQExpBuffer (TYPE_1__*) ;

__attribute__((used)) static void
cluster_one_database(const char *dbname, bool verbose, const char *table,
      const char *host, const char *port,
      const char *username, enum trivalue prompt_password,
      const char *progname, bool echo)
{
 PQExpBufferData sql;

 PGconn *conn;

 conn = connectDatabase(dbname, host, port, username, prompt_password,
         progname, echo, 0, 0);

 initPQExpBuffer(&sql);

 appendPQExpBufferStr(&sql, "CLUSTER");
 if (verbose)
  appendPQExpBufferStr(&sql, " VERBOSE");
 if (table)
 {
  appendPQExpBufferChar(&sql, ' ');
  appendQualifiedRelation(&sql, table, conn, echo);
 }
 appendPQExpBufferChar(&sql, ';');

 if (!executeMaintenanceCommand(conn, sql.data, echo))
 {
  if (table)
   pg_log_error("clustering of table \"%s\" in database \"%s\" failed: %s",
       table, PQdb(conn), PQerrorMessage(conn));
  else
   pg_log_error("clustering of database \"%s\" failed: %s",
       PQdb(conn), PQerrorMessage(conn));
  PQfinish(conn);
  exit(1);
 }
 PQfinish(conn);
 termPQExpBuffer(&sql);
}
