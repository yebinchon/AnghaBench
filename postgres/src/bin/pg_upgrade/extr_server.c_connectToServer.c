
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGconn ;
typedef int ClusterInfo ;


 int ALWAYS_SECURE_SEARCH_PATH_SQL ;
 scalar_t__ CONNECTION_OK ;
 int PG_REPORT ;
 int PQclear (int ) ;
 int PQerrorMessage (int *) ;
 int PQfinish (int *) ;
 scalar_t__ PQstatus (int *) ;
 char* _ (char*) ;
 int executeQueryOrDie (int *,int ) ;
 int exit (int) ;
 int * get_db_conn (int *,char const*) ;
 int pg_log (int ,char*,int ) ;
 int printf (char*) ;

PGconn *
connectToServer(ClusterInfo *cluster, const char *db_name)
{
 PGconn *conn = get_db_conn(cluster, db_name);

 if (conn == ((void*)0) || PQstatus(conn) != CONNECTION_OK)
 {
  pg_log(PG_REPORT, "connection to database failed: %s",
      PQerrorMessage(conn));

  if (conn)
   PQfinish(conn);

  printf(_("Failure, exiting\n"));
  exit(1);
 }

 PQclear(executeQueryOrDie(conn, ALWAYS_SECURE_SEARCH_PATH_SQL));

 return conn;
}
