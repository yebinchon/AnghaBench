
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct options {char* hostname; char* port; char* username; char* dbname; char* progname; } ;
typedef int password ;
typedef int PGresult ;
typedef int PGconn ;


 int ALWAYS_SECURE_SEARCH_PATH_SQL ;
 scalar_t__ CONNECTION_BAD ;
 int PARAMS_ARRAY_SIZE ;
 scalar_t__ PGRES_TUPLES_OK ;
 int PQclear (int *) ;
 int * PQconnectdbParams (char const**,char const**,int) ;
 scalar_t__ PQconnectionNeedsPassword (int *) ;
 char* PQerrorMessage (int *) ;
 int * PQexec (int *,int ) ;
 int PQfinish (int *) ;
 scalar_t__ PQresultStatus (int *) ;
 scalar_t__ PQstatus (int *) ;
 int exit (int) ;
 int pg_log_error (char*,char*,...) ;
 int simple_prompt (char*,char*,int,int) ;

PGconn *
sql_conn(struct options *my_opts)
{
 PGconn *conn;
 bool have_password = 0;
 char password[100];
 bool new_pass;
 PGresult *res;





 do
 {


  const char *keywords[7];
  const char *values[7];

  keywords[0] = "host";
  values[0] = my_opts->hostname;
  keywords[1] = "port";
  values[1] = my_opts->port;
  keywords[2] = "user";
  values[2] = my_opts->username;
  keywords[3] = "password";
  values[3] = have_password ? password : ((void*)0);
  keywords[4] = "dbname";
  values[4] = my_opts->dbname;
  keywords[5] = "fallback_application_name";
  values[5] = my_opts->progname;
  keywords[6] = ((void*)0);
  values[6] = ((void*)0);

  new_pass = 0;
  conn = PQconnectdbParams(keywords, values, 1);

  if (!conn)
  {
   pg_log_error("could not connect to database %s",
       my_opts->dbname);
   exit(1);
  }

  if (PQstatus(conn) == CONNECTION_BAD &&
   PQconnectionNeedsPassword(conn) &&
   !have_password)
  {
   PQfinish(conn);
   simple_prompt("Password: ", password, sizeof(password), 0);
   have_password = 1;
   new_pass = 1;
  }
 } while (new_pass);


 if (PQstatus(conn) == CONNECTION_BAD)
 {
  pg_log_error("could not connect to database %s: %s",
      my_opts->dbname, PQerrorMessage(conn));
  PQfinish(conn);
  exit(1);
 }

 res = PQexec(conn, ALWAYS_SECURE_SEARCH_PATH_SQL);
 if (PQresultStatus(res) != PGRES_TUPLES_OK)
 {
  pg_log_error("could not clear search_path: %s",
      PQerrorMessage(conn));
  PQclear(res);
  PQfinish(conn);
  exit(-1);
 }
 PQclear(res);


 return conn;
}
