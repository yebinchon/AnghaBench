
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int password ;
typedef int PGconn ;


 scalar_t__ CONNECTION_BAD ;
 int PARAMS_ARRAY_SIZE ;
 int * PQconnectdbParams (char const**,char const**,int) ;
 scalar_t__ PQconnectionNeedsPassword (int *) ;
 char* PQerrorMessage (int *) ;
 int PQfinish (int *) ;
 scalar_t__ PQstatus (int *) ;
 char* dbName ;
 int fprintf (int ,char*,char*,...) ;
 char* login ;
 char* pghost ;
 char* pgport ;
 char* progname ;
 int simple_prompt (char*,char*,int,int) ;
 int stderr ;

__attribute__((used)) static PGconn *
doConnect(void)
{
 PGconn *conn;
 bool new_pass;
 static bool have_password = 0;
 static char password[100];





 do
 {


  const char *keywords[7];
  const char *values[7];

  keywords[0] = "host";
  values[0] = pghost;
  keywords[1] = "port";
  values[1] = pgport;
  keywords[2] = "user";
  values[2] = login;
  keywords[3] = "password";
  values[3] = have_password ? password : ((void*)0);
  keywords[4] = "dbname";
  values[4] = dbName;
  keywords[5] = "fallback_application_name";
  values[5] = progname;
  keywords[6] = ((void*)0);
  values[6] = ((void*)0);

  new_pass = 0;

  conn = PQconnectdbParams(keywords, values, 1);

  if (!conn)
  {
   fprintf(stderr, "connection to database \"%s\" failed\n",
     dbName);
   return ((void*)0);
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
  fprintf(stderr, "connection to database \"%s\" failed:\n%s",
    dbName, PQerrorMessage(conn));
  PQfinish(conn);
  return ((void*)0);
 }

 return conn;
}
