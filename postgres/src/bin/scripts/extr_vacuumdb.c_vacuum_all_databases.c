
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int vacuumingOptions ;
typedef enum trivalue { ____Placeholder_trivalue } trivalue ;
struct TYPE_7__ {int data; } ;
typedef TYPE_1__ PQExpBufferData ;
typedef int PGresult ;
typedef int PGconn ;


 int ANALYZE_NO_STAGE ;
 int ANALYZE_NUM_STAGES ;
 int PQclear (int *) ;
 int PQfinish (int *) ;
 int PQgetvalue (int *,int,int ) ;
 int PQntuples (int *) ;
 int appendConnStrVal (TYPE_1__*,int ) ;
 int appendPQExpBufferStr (TYPE_1__*,char*) ;
 int * connectMaintenanceDatabase (char const*,char const*,char const*,char const*,int,char const*,int) ;
 int * executeQuery (int *,char*,int) ;
 int initPQExpBuffer (TYPE_1__*) ;
 int resetPQExpBuffer (TYPE_1__*) ;
 int termPQExpBuffer (TYPE_1__*) ;
 int vacuum_one_database (int ,int *,int,int *,char const*,char const*,char const*,int,int,char const*,int,int) ;

__attribute__((used)) static void
vacuum_all_databases(vacuumingOptions *vacopts,
      bool analyze_in_stages,
      const char *maintenance_db, const char *host,
      const char *port, const char *username,
      enum trivalue prompt_password,
      int concurrentCons,
      const char *progname, bool echo, bool quiet)
{
 PGconn *conn;
 PGresult *result;
 PQExpBufferData connstr;
 int stage;
 int i;

 conn = connectMaintenanceDatabase(maintenance_db, host, port, username,
           prompt_password, progname, echo);
 result = executeQuery(conn,
        "SELECT datname FROM pg_database WHERE datallowconn ORDER BY 1;",
        echo);
 PQfinish(conn);

 initPQExpBuffer(&connstr);
 if (analyze_in_stages)
 {
  for (stage = 0; stage < ANALYZE_NUM_STAGES; stage++)
  {
   for (i = 0; i < PQntuples(result); i++)
   {
    resetPQExpBuffer(&connstr);
    appendPQExpBufferStr(&connstr, "dbname=");
    appendConnStrVal(&connstr, PQgetvalue(result, i, 0));

    vacuum_one_database(connstr.data, vacopts,
         stage,
         ((void*)0),
         host, port, username, prompt_password,
         concurrentCons,
         progname, echo, quiet);
   }
  }
 }
 else
 {
  for (i = 0; i < PQntuples(result); i++)
  {
   resetPQExpBuffer(&connstr);
   appendPQExpBufferStr(&connstr, "dbname=");
   appendConnStrVal(&connstr, PQgetvalue(result, i, 0));

   vacuum_one_database(connstr.data, vacopts,
        ANALYZE_NO_STAGE,
        ((void*)0),
        host, port, username, prompt_password,
        concurrentCons,
        progname, echo, quiet);
  }
 }
 termPQExpBuffer(&connstr);

 PQclear(result);
}
