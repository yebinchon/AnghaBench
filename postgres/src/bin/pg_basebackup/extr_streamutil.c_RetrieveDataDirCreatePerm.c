
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGresult ;
typedef int PGconn ;


 int Assert (int ) ;
 scalar_t__ MINIMUM_VERSION_FOR_GROUP_ACCESS ;
 scalar_t__ PGRES_TUPLES_OK ;
 int PQclear (int *) ;
 int PQerrorMessage (int *) ;
 int * PQexec (int *,char*) ;
 int PQgetvalue (int *,int ,int ) ;
 int PQnfields (int *) ;
 int PQntuples (int *) ;
 scalar_t__ PQresultStatus (int *) ;
 scalar_t__ PQserverVersion (int *) ;
 int SetDataDirectoryCreatePerm (int) ;
 int pg_log_error (char*,...) ;
 int sscanf (int ,char*,int*) ;

__attribute__((used)) static bool
RetrieveDataDirCreatePerm(PGconn *conn)
{
 PGresult *res;
 int data_directory_mode;


 Assert(conn != ((void*)0));


 if (PQserverVersion(conn) < MINIMUM_VERSION_FOR_GROUP_ACCESS)
  return 1;

 res = PQexec(conn, "SHOW data_directory_mode");
 if (PQresultStatus(res) != PGRES_TUPLES_OK)
 {
  pg_log_error("could not send replication command \"%s\": %s",
      "SHOW data_directory_mode", PQerrorMessage(conn));

  PQclear(res);
  return 0;
 }
 if (PQntuples(res) != 1 || PQnfields(res) < 1)
 {
  pg_log_error("could not fetch group access flag: got %d rows and %d fields, expected %d rows and %d or more fields",
      PQntuples(res), PQnfields(res), 1, 1);

  PQclear(res);
  return 0;
 }

 if (sscanf(PQgetvalue(res, 0, 0), "%o", &data_directory_mode) != 1)
 {
  pg_log_error("group access flag could not be parsed: %s",
      PQgetvalue(res, 0, 0));

  PQclear(res);
  return 0;
 }

 SetDataDirectoryCreatePerm(data_directory_mode);

 PQclear(res);
 return 1;
}
