
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGresult ;


 int ALWAYS_SECURE_SEARCH_PATH_SQL ;
 scalar_t__ CONNECTION_BAD ;
 scalar_t__ PGRES_TUPLES_OK ;
 int PQclear (int *) ;
 int PQconnectdb (char const*) ;
 int PQerrorMessage (int ) ;
 int * PQexec (int ,int ) ;
 int PQresultErrorMessage (int *) ;
 scalar_t__ PQresultStatus (int *) ;
 scalar_t__ PQstatus (int ) ;
 int conn ;
 int pg_fatal (char*,...) ;
 int pg_free (char*) ;
 int pg_log_info (char*) ;
 int run_simple_command (char*) ;
 char* run_simple_query (char*) ;
 scalar_t__ showprogress ;
 scalar_t__ strcmp (char*,char*) ;

void
libpqConnect(const char *connstr)
{
 char *str;
 PGresult *res;

 conn = PQconnectdb(connstr);
 if (PQstatus(conn) == CONNECTION_BAD)
  pg_fatal("could not connect to server: %s",
     PQerrorMessage(conn));

 if (showprogress)
  pg_log_info("connected to server");


 run_simple_command("SET statement_timeout = 0");
 run_simple_command("SET lock_timeout = 0");
 run_simple_command("SET idle_in_transaction_session_timeout = 0");

 res = PQexec(conn, ALWAYS_SECURE_SEARCH_PATH_SQL);
 if (PQresultStatus(res) != PGRES_TUPLES_OK)
  pg_fatal("could not clear search_path: %s",
     PQresultErrorMessage(res));
 PQclear(res);







 str = run_simple_query("SELECT pg_is_in_recovery()");
 if (strcmp(str, "f") != 0)
  pg_fatal("source server must not be in recovery mode");
 pg_free(str);






 str = run_simple_query("SHOW full_page_writes");
 if (strcmp(str, "on") != 0)
  pg_fatal("full_page_writes must be enabled in the source server");
 pg_free(str);
 run_simple_command("SET synchronous_commit = off");
}
