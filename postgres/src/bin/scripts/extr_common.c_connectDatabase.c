
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int password ;
typedef enum trivalue { ____Placeholder_trivalue } trivalue ;
typedef int PGconn ;


 int ALWAYS_SECURE_SEARCH_PATH_SQL ;
 scalar_t__ CONNECTION_BAD ;
 int PQclear (int ) ;
 int * PQconnectdbParams (char const**,char const**,int) ;
 scalar_t__ PQconnectionNeedsPassword (int *) ;
 int PQerrorMessage (int *) ;
 int PQfinish (int *) ;
 scalar_t__ PQstatus (int *) ;
 int TRI_NO ;
 int TRI_YES ;
 int executeQuery (int *,int ,int) ;
 int exit (int) ;
 int pg_log_error (char*,char const*,...) ;
 int simple_prompt (char*,char*,int,int) ;

PGconn *
connectDatabase(const char *dbname, const char *pghost,
    const char *pgport, const char *pguser,
    enum trivalue prompt_password, const char *progname,
    bool echo, bool fail_ok, bool allow_password_reuse)
{
 PGconn *conn;
 bool new_pass;
 static bool have_password = 0;
 static char password[100];

 if (!allow_password_reuse)
  have_password = 0;

 if (!have_password && prompt_password == TRI_YES)
 {
  simple_prompt("Password: ", password, sizeof(password), 0);
  have_password = 1;
 }





 do
 {
  const char *keywords[7];
  const char *values[7];

  keywords[0] = "host";
  values[0] = pghost;
  keywords[1] = "port";
  values[1] = pgport;
  keywords[2] = "user";
  values[2] = pguser;
  keywords[3] = "password";
  values[3] = have_password ? password : ((void*)0);
  keywords[4] = "dbname";
  values[4] = dbname;
  keywords[5] = "fallback_application_name";
  values[5] = progname;
  keywords[6] = ((void*)0);
  values[6] = ((void*)0);

  new_pass = 0;
  conn = PQconnectdbParams(keywords, values, 1);

  if (!conn)
  {
   pg_log_error("could not connect to database %s: out of memory",
       dbname);
   exit(1);
  }




  if (PQstatus(conn) == CONNECTION_BAD &&
   PQconnectionNeedsPassword(conn) &&
   prompt_password != TRI_NO)
  {
   PQfinish(conn);
   simple_prompt("Password: ", password, sizeof(password), 0);
   have_password = 1;
   new_pass = 1;
  }
 } while (new_pass);


 if (PQstatus(conn) == CONNECTION_BAD)
 {
  if (fail_ok)
  {
   PQfinish(conn);
   return ((void*)0);
  }
  pg_log_error("could not connect to database %s: %s",
      dbname, PQerrorMessage(conn));
  exit(1);
 }

 PQclear(executeQuery(conn, ALWAYS_SECURE_SEARCH_PATH_SQL, echo));

 return conn;
}
