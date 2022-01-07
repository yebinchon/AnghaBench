
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGresult ;
typedef int PGconn ;


 int Assert (int ) ;
 int DEFAULT_XLOG_SEG_SIZE ;
 int IsValidWalSegSize (int) ;
 scalar_t__ MINIMUM_VERSION_FOR_SHOW_CMD ;
 scalar_t__ PGRES_TUPLES_OK ;
 int PQclear (int *) ;
 int PQerrorMessage (int *) ;
 int * PQexec (int *,char*) ;
 int PQgetvalue (int *,int ,int ) ;
 int PQnfields (int *) ;
 int PQntuples (int *) ;
 scalar_t__ PQresultStatus (int *) ;
 scalar_t__ PQserverVersion (int *) ;
 int WalSegSz ;
 int ngettext (char*,char*,int) ;
 int pg_log_error (char*,...) ;
 int sscanf (int ,char*,int*,char*) ;
 scalar_t__ strcmp (char*,char*) ;

bool
RetrieveWalSegSize(PGconn *conn)
{
 PGresult *res;
 char xlog_unit[3];
 int xlog_val,
    multiplier = 1;


 Assert(conn != ((void*)0));


 if (PQserverVersion(conn) < MINIMUM_VERSION_FOR_SHOW_CMD)
 {
  WalSegSz = DEFAULT_XLOG_SEG_SIZE;
  return 1;
 }

 res = PQexec(conn, "SHOW wal_segment_size");
 if (PQresultStatus(res) != PGRES_TUPLES_OK)
 {
  pg_log_error("could not send replication command \"%s\": %s",
      "SHOW wal_segment_size", PQerrorMessage(conn));

  PQclear(res);
  return 0;
 }
 if (PQntuples(res) != 1 || PQnfields(res) < 1)
 {
  pg_log_error("could not fetch WAL segment size: got %d rows and %d fields, expected %d rows and %d or more fields",
      PQntuples(res), PQnfields(res), 1, 1);

  PQclear(res);
  return 0;
 }


 if (sscanf(PQgetvalue(res, 0, 0), "%d%s", &xlog_val, xlog_unit) != 2)
 {
  pg_log_error("WAL segment size could not be parsed");
  return 0;
 }


 if (strcmp(xlog_unit, "MB") == 0)
  multiplier = 1024 * 1024;
 else if (strcmp(xlog_unit, "GB") == 0)
  multiplier = 1024 * 1024 * 1024;


 WalSegSz = xlog_val * multiplier;

 if (!IsValidWalSegSize(WalSegSz))
 {
  pg_log_error(ngettext("WAL segment size must be a power of two between 1 MB and 1 GB, but the remote server reported a value of %d byte",
         "WAL segment size must be a power of two between 1 MB and 1 GB, but the remote server reported a value of %d bytes",
         WalSegSz),
      WalSegSz);
  return 0;
 }

 PQclear(res);
 return 1;
}
