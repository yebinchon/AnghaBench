
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGresult ;
typedef int PGconn ;


 scalar_t__ PGRES_TUPLES_OK ;
 char const* PQerrorMessage (int *) ;
 int * PQexec (int *,char const*) ;
 int PQfinish (int *) ;
 scalar_t__ PQresultStatus (int *) ;
 int exit_nicely (int) ;
 int pg_log_error (char*,char const*) ;
 int pg_log_info (char*,char const*) ;

__attribute__((used)) static PGresult *
executeQuery(PGconn *conn, const char *query)
{
 PGresult *res;

 pg_log_info("executing %s", query);

 res = PQexec(conn, query);
 if (!res ||
  PQresultStatus(res) != PGRES_TUPLES_OK)
 {
  pg_log_error("query failed: %s", PQerrorMessage(conn));
  pg_log_error("query was: %s", query);
  PQfinish(conn);
  exit_nicely(1);
 }

 return res;
}
