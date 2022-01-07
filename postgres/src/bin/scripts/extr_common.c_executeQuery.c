
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGresult ;
typedef int PGconn ;


 scalar_t__ PGRES_TUPLES_OK ;
 int PQerrorMessage (int *) ;
 int * PQexec (int *,char const*) ;
 int PQfinish (int *) ;
 scalar_t__ PQresultStatus (int *) ;
 int exit (int) ;
 int pg_log_error (char*,int ) ;
 int pg_log_info (char*,char const*) ;
 int printf (char*,char const*) ;

PGresult *
executeQuery(PGconn *conn, const char *query, bool echo)
{
 PGresult *res;

 if (echo)
  printf("%s\n", query);

 res = PQexec(conn, query);
 if (!res ||
  PQresultStatus(res) != PGRES_TUPLES_OK)
 {
  pg_log_error("query failed: %s", PQerrorMessage(conn));
  pg_log_info("query was: %s", query);
  PQfinish(conn);
  exit(1);
 }

 return res;
}
