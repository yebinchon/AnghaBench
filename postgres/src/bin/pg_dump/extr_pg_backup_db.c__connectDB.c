
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int passbuf ;
struct TYPE_10__ {char* savedPassword; scalar_t__ promptPassword; int connection; } ;
struct TYPE_9__ {char* data; } ;
typedef TYPE_1__ PQExpBufferData ;
typedef int PGconn ;
typedef TYPE_2__ ArchiveHandle ;


 scalar_t__ CONNECTION_BAD ;
 int * PQconnectdbParams (char const**,char const**,int) ;
 int PQconnectionNeedsPassword (int *) ;
 scalar_t__ PQconnectionUsedPassword (int *) ;
 char* PQdb (int ) ;
 int PQerrorMessage (int *) ;
 int PQfinish (int *) ;
 char* PQhost (int ) ;
 int PQpass (int *) ;
 char* PQport (int ) ;
 int PQsetNoticeProcessor (int *,int ,int *) ;
 scalar_t__ PQstatus (int *) ;
 char* PQuser (int ) ;
 scalar_t__ TRI_NO ;
 scalar_t__ TRI_YES ;
 int _check_database_version (TYPE_2__*) ;
 int appendConnStrVal (TYPE_1__*,char const*) ;
 int appendPQExpBufferStr (TYPE_1__*,char*) ;
 int fatal (char*,...) ;
 int fprintf (int ,char*,...) ;
 int free (char*) ;
 int initPQExpBuffer (TYPE_1__*) ;
 int notice_processor ;
 int pg_log_info (char*,char const*,char const*) ;
 char* pg_strdup (int ) ;
 char* progname ;
 int simple_prompt (char*,char*,int,int) ;
 int stderr ;
 scalar_t__ strlen (char const*) ;
 int termPQExpBuffer (TYPE_1__*) ;

__attribute__((used)) static PGconn *
_connectDB(ArchiveHandle *AH, const char *reqdb, const char *requser)
{
 PQExpBufferData connstr;
 PGconn *newConn;
 const char *newdb;
 const char *newuser;
 char *password;
 char passbuf[100];
 bool new_pass;

 if (!reqdb)
  newdb = PQdb(AH->connection);
 else
  newdb = reqdb;

 if (!requser || strlen(requser) == 0)
  newuser = PQuser(AH->connection);
 else
  newuser = requser;

 pg_log_info("connecting to database \"%s\" as user \"%s\"",
    newdb, newuser);

 password = AH->savedPassword;

 if (AH->promptPassword == TRI_YES && password == ((void*)0))
 {
  simple_prompt("Password: ", passbuf, sizeof(passbuf), 0);
  password = passbuf;
 }

 initPQExpBuffer(&connstr);
 appendPQExpBufferStr(&connstr, "dbname=");
 appendConnStrVal(&connstr, newdb);

 do
 {
  const char *keywords[7];
  const char *values[7];

  keywords[0] = "host";
  values[0] = PQhost(AH->connection);
  keywords[1] = "port";
  values[1] = PQport(AH->connection);
  keywords[2] = "user";
  values[2] = newuser;
  keywords[3] = "password";
  values[3] = password;
  keywords[4] = "dbname";
  values[4] = connstr.data;
  keywords[5] = "fallback_application_name";
  values[5] = progname;
  keywords[6] = ((void*)0);
  values[6] = ((void*)0);

  new_pass = 0;
  newConn = PQconnectdbParams(keywords, values, 1);

  if (!newConn)
   fatal("could not reconnect to database");

  if (PQstatus(newConn) == CONNECTION_BAD)
  {
   if (!PQconnectionNeedsPassword(newConn))
    fatal("could not reconnect to database: %s",
       PQerrorMessage(newConn));
   PQfinish(newConn);

   if (password)
    fprintf(stderr, "Password incorrect\n");

   fprintf(stderr, "Connecting to %s as %s\n",
     newdb, newuser);

   if (AH->promptPassword != TRI_NO)
   {
    simple_prompt("Password: ", passbuf, sizeof(passbuf), 0);
    password = passbuf;
   }
   else
    fatal("connection needs password");

   new_pass = 1;
  }
 } while (new_pass);





 if (PQconnectionUsedPassword(newConn))
 {
  if (AH->savedPassword)
   free(AH->savedPassword);
  AH->savedPassword = pg_strdup(PQpass(newConn));
 }

 termPQExpBuffer(&connstr);


 _check_database_version(AH);

 PQsetNoticeProcessor(newConn, notice_processor, ((void*)0));

 return newConn;
}
