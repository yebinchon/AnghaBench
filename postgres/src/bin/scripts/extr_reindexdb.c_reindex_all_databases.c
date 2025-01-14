
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef enum trivalue { ____Placeholder_trivalue } trivalue ;
struct TYPE_7__ {int data; } ;
typedef TYPE_1__ PQExpBufferData ;
typedef int PGresult ;
typedef int PGconn ;


 int PQclear (int *) ;
 int PQfinish (int *) ;
 char* PQgetvalue (int *,int,int ) ;
 int PQntuples (int *) ;
 int REINDEX_DATABASE ;
 char* _ (char*) ;
 int appendConnStrVal (TYPE_1__*,char*) ;
 int appendPQExpBufferStr (TYPE_1__*,char*) ;
 int * connectMaintenanceDatabase (char const*,char const*,char const*,char const*,int,char const*,int) ;
 int * executeQuery (int *,char*,int) ;
 int fflush (int ) ;
 int initPQExpBuffer (TYPE_1__*) ;
 int printf (char*,char const*,char*) ;
 int reindex_one_database (int ,int ,int *,char const*,char const*,char const*,int,char const*,int,int,int,int) ;
 int resetPQExpBuffer (TYPE_1__*) ;
 int stdout ;
 int termPQExpBuffer (TYPE_1__*) ;

__attribute__((used)) static void
reindex_all_databases(const char *maintenance_db,
       const char *host, const char *port,
       const char *username, enum trivalue prompt_password,
       const char *progname, bool echo, bool quiet, bool verbose,
       bool concurrently, int concurrentCons)
{
 PGconn *conn;
 PGresult *result;
 PQExpBufferData connstr;
 int i;

 conn = connectMaintenanceDatabase(maintenance_db, host, port, username,
           prompt_password, progname, echo);
 result = executeQuery(conn, "SELECT datname FROM pg_database WHERE datallowconn ORDER BY 1;", echo);
 PQfinish(conn);

 initPQExpBuffer(&connstr);
 for (i = 0; i < PQntuples(result); i++)
 {
  char *dbname = PQgetvalue(result, i, 0);

  if (!quiet)
  {
   printf(_("%s: reindexing database \"%s\"\n"), progname, dbname);
   fflush(stdout);
  }

  resetPQExpBuffer(&connstr);
  appendPQExpBufferStr(&connstr, "dbname=");
  appendConnStrVal(&connstr, dbname);

  reindex_one_database(connstr.data, REINDEX_DATABASE, ((void*)0), host,
        port, username, prompt_password,
        progname, echo, verbose, concurrently,
        concurrentCons);
 }
 termPQExpBuffer(&connstr);

 PQclear(result);
}
