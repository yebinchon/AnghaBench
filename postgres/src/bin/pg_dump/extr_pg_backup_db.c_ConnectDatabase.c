
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ trivalue ;
typedef int passbuf ;
struct TYPE_4__ {char* savedPassword; scalar_t__ connection; scalar_t__ promptPassword; } ;
typedef TYPE_1__ ArchiveHandle ;
typedef int Archive ;


 int ALWAYS_SECURE_SEARCH_PATH_SQL ;
 scalar_t__ CONNECTION_BAD ;
 int ExecuteSqlQueryForSingleRow (int *,int ) ;
 int PQclear (int ) ;
 scalar_t__ PQconnectdbParams (char const**,char const**,int) ;
 scalar_t__ PQconnectionNeedsPassword (scalar_t__) ;
 scalar_t__ PQconnectionUsedPassword (scalar_t__) ;
 char* PQdb (scalar_t__) ;
 int PQerrorMessage (scalar_t__) ;
 int PQfinish (scalar_t__) ;
 int PQpass (scalar_t__) ;
 int PQsetNoticeProcessor (scalar_t__,int ,int *) ;
 scalar_t__ PQstatus (scalar_t__) ;
 scalar_t__ TRI_NO ;
 scalar_t__ TRI_YES ;
 int _check_database_version (TYPE_1__*) ;
 int fatal (char*,...) ;
 int free (char*) ;
 int notice_processor ;
 char* pg_strdup (int ) ;
 char* progname ;
 int set_archive_cancel_info (TYPE_1__*,scalar_t__) ;
 int simple_prompt (char*,char*,int,int) ;

void
ConnectDatabase(Archive *AHX,
    const char *dbname,
    const char *pghost,
    const char *pgport,
    const char *username,
    trivalue prompt_password)
{
 ArchiveHandle *AH = (ArchiveHandle *) AHX;
 char *password;
 char passbuf[100];
 bool new_pass;

 if (AH->connection)
  fatal("already connected to a database");

 password = AH->savedPassword;

 if (prompt_password == TRI_YES && password == ((void*)0))
 {
  simple_prompt("Password: ", passbuf, sizeof(passbuf), 0);
  password = passbuf;
 }
 AH->promptPassword = prompt_password;





 do
 {
  const char *keywords[7];
  const char *values[7];

  keywords[0] = "host";
  values[0] = pghost;
  keywords[1] = "port";
  values[1] = pgport;
  keywords[2] = "user";
  values[2] = username;
  keywords[3] = "password";
  values[3] = password;
  keywords[4] = "dbname";
  values[4] = dbname;
  keywords[5] = "fallback_application_name";
  values[5] = progname;
  keywords[6] = ((void*)0);
  values[6] = ((void*)0);

  new_pass = 0;
  AH->connection = PQconnectdbParams(keywords, values, 1);

  if (!AH->connection)
   fatal("could not connect to database");

  if (PQstatus(AH->connection) == CONNECTION_BAD &&
   PQconnectionNeedsPassword(AH->connection) &&
   password == ((void*)0) &&
   prompt_password != TRI_NO)
  {
   PQfinish(AH->connection);
   simple_prompt("Password: ", passbuf, sizeof(passbuf), 0);
   password = passbuf;
   new_pass = 1;
  }
 } while (new_pass);


 if (PQstatus(AH->connection) == CONNECTION_BAD)
  fatal("connection to database \"%s\" failed: %s",
     PQdb(AH->connection) ? PQdb(AH->connection) : "",
     PQerrorMessage(AH->connection));


 PQclear(ExecuteSqlQueryForSingleRow((Archive *) AH,
          ALWAYS_SECURE_SEARCH_PATH_SQL));





 if (PQconnectionUsedPassword(AH->connection))
 {
  if (AH->savedPassword)
   free(AH->savedPassword);
  AH->savedPassword = pg_strdup(PQpass(AH->connection));
 }


 _check_database_version(AH);

 PQsetNoticeProcessor(AH->connection, notice_processor, ((void*)0));


 set_archive_cancel_info(AH, AH->connection);
}
