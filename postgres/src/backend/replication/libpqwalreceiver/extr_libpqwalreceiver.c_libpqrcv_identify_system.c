
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int streamConn; } ;
typedef TYPE_1__ WalReceiverConn ;
typedef int TimeLineID ;
typedef int PGresult ;


 int ERROR ;
 scalar_t__ PGRES_TUPLES_OK ;
 int PQclear (int *) ;
 int PQerrorMessage (int ) ;
 int PQgetvalue (int *,int ,int) ;
 int PQnfields (int *) ;
 int PQntuples (int *) ;
 scalar_t__ PQresultStatus (int *) ;
 int ereport (int ,int ) ;
 int errdetail (char*,int,int,int,int) ;
 int errmsg (char*,...) ;
 int * libpqrcv_PQexec (int ,char*) ;
 int pchomp (int ) ;
 int pg_strtoint32 (int ) ;
 char* pstrdup (int ) ;

__attribute__((used)) static char *
libpqrcv_identify_system(WalReceiverConn *conn, TimeLineID *primary_tli)
{
 PGresult *res;
 char *primary_sysid;





 res = libpqrcv_PQexec(conn->streamConn, "IDENTIFY_SYSTEM");
 if (PQresultStatus(res) != PGRES_TUPLES_OK)
 {
  PQclear(res);
  ereport(ERROR,
    (errmsg("could not receive database system identifier and timeline ID from "
      "the primary server: %s",
      pchomp(PQerrorMessage(conn->streamConn)))));
 }
 if (PQnfields(res) < 3 || PQntuples(res) != 1)
 {
  int ntuples = PQntuples(res);
  int nfields = PQnfields(res);

  PQclear(res);
  ereport(ERROR,
    (errmsg("invalid response from primary server"),
     errdetail("Could not identify system: got %d rows and %d fields, expected %d rows and %d or more fields.",
         ntuples, nfields, 3, 1)));
 }
 primary_sysid = pstrdup(PQgetvalue(res, 0, 0));
 *primary_tli = pg_strtoint32(PQgetvalue(res, 0, 1));
 PQclear(res);

 return primary_sysid;
}
