
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;
typedef int uint32 ;
typedef int XLogRecPtr ;
typedef int TimeLineID ;
typedef int PGresult ;
typedef int PGconn ;


 int Assert (int ) ;
 scalar_t__ PGRES_TUPLES_OK ;
 int PQclear (int *) ;
 int PQerrorMessage (int *) ;
 int * PQexec (int *,char*) ;
 int PQgetisnull (int *,int ,int) ;
 int PQgetvalue (int *,int ,int) ;
 int PQnfields (int *) ;
 int PQntuples (int *) ;
 scalar_t__ PQresultStatus (int *) ;
 int PQserverVersion (int *) ;
 int atoi (int ) ;
 int pg_log_error (char*,...) ;
 char* pg_strdup (int ) ;
 int sscanf (int ,char*,int*,int*) ;

bool
RunIdentifySystem(PGconn *conn, char **sysid, TimeLineID *starttli,
      XLogRecPtr *startpos, char **db_name)
{
 PGresult *res;
 uint32 hi,
    lo;


 Assert(conn != ((void*)0));

 res = PQexec(conn, "IDENTIFY_SYSTEM");
 if (PQresultStatus(res) != PGRES_TUPLES_OK)
 {
  pg_log_error("could not send replication command \"%s\": %s",
      "IDENTIFY_SYSTEM", PQerrorMessage(conn));

  PQclear(res);
  return 0;
 }
 if (PQntuples(res) != 1 || PQnfields(res) < 3)
 {
  pg_log_error("could not identify system: got %d rows and %d fields, expected %d rows and %d or more fields",
      PQntuples(res), PQnfields(res), 1, 3);

  PQclear(res);
  return 0;
 }


 if (sysid != ((void*)0))
  *sysid = pg_strdup(PQgetvalue(res, 0, 0));


 if (starttli != ((void*)0))
  *starttli = atoi(PQgetvalue(res, 0, 1));


 if (startpos != ((void*)0))
 {
  if (sscanf(PQgetvalue(res, 0, 2), "%X/%X", &hi, &lo) != 2)
  {
   pg_log_error("could not parse write-ahead log location \"%s\"",
       PQgetvalue(res, 0, 2));

   PQclear(res);
   return 0;
  }
  *startpos = ((uint64) hi) << 32 | lo;
 }


 if (db_name != ((void*)0))
 {
  *db_name = ((void*)0);
  if (PQserverVersion(conn) >= 90400)
  {
   if (PQnfields(res) < 4)
   {
    pg_log_error("could not identify system: got %d rows and %d fields, expected %d rows and %d or more fields",
        PQntuples(res), PQnfields(res), 1, 4);

    PQclear(res);
    return 0;
   }
   if (!PQgetisnull(res, 0, 3))
    *db_name = pg_strdup(PQgetvalue(res, 0, 3));
  }
 }

 PQclear(res);
 return 1;
}
