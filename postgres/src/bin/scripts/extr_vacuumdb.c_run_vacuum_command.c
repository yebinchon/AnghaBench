
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGconn ;


 int PQdb (int *) ;
 int PQerrorMessage (int *) ;
 int PQsendQuery (int *,char const*) ;
 int pg_log_error (char*,char const*,int ,...) ;
 int printf (char*,char const*) ;

__attribute__((used)) static void
run_vacuum_command(PGconn *conn, const char *sql, bool echo,
       const char *table)
{
 bool status;

 if (echo)
  printf("%s\n", sql);

 status = PQsendQuery(conn, sql) == 1;

 if (!status)
 {
  if (table)
   pg_log_error("vacuuming of table \"%s\" in database \"%s\" failed: %s",
       table, PQdb(conn), PQerrorMessage(conn));
  else
   pg_log_error("vacuuming of database \"%s\" failed: %s",
       PQdb(conn), PQerrorMessage(conn));
 }
}
