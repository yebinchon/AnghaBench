
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGconn ;


 int PQserverVersion (int *) ;
 int do_sql_command (int *,char*) ;

__attribute__((used)) static void
configure_remote_session(PGconn *conn)
{
 int remoteversion = PQserverVersion(conn);


 do_sql_command(conn, "SET search_path = pg_catalog");
 do_sql_command(conn, "SET timezone = 'UTC'");






 do_sql_command(conn, "SET datestyle = ISO");
 if (remoteversion >= 80400)
  do_sql_command(conn, "SET intervalstyle = postgres");
 if (remoteversion >= 90000)
  do_sql_command(conn, "SET extra_float_digits = 3");
 else
  do_sql_command(conn, "SET extra_float_digits = 2");
}
