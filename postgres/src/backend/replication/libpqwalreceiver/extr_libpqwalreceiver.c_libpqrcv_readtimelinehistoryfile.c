
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int cmd ;
struct TYPE_3__ {int streamConn; int logical; } ;
typedef TYPE_1__ WalReceiverConn ;
typedef int TimeLineID ;
typedef int PGresult ;


 int Assert (int) ;
 int ERROR ;
 scalar_t__ PGRES_TUPLES_OK ;
 int PQclear (int *) ;
 int PQerrorMessage (int ) ;
 int PQgetlength (int *,int ,int) ;
 int PQgetvalue (int *,int ,int) ;
 int PQnfields (int *) ;
 int PQntuples (int *) ;
 scalar_t__ PQresultStatus (int *) ;
 int ereport (int ,int ) ;
 int errdetail (char*,int,int) ;
 int errmsg (char*,...) ;
 int * libpqrcv_PQexec (int ,char*) ;
 int memcpy (char*,int ,int) ;
 char* palloc (int) ;
 int pchomp (int ) ;
 char* pstrdup (int ) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static void
libpqrcv_readtimelinehistoryfile(WalReceiverConn *conn,
         TimeLineID tli, char **filename,
         char **content, int *len)
{
 PGresult *res;
 char cmd[64];

 Assert(!conn->logical);




 snprintf(cmd, sizeof(cmd), "TIMELINE_HISTORY %u", tli);
 res = libpqrcv_PQexec(conn->streamConn, cmd);
 if (PQresultStatus(res) != PGRES_TUPLES_OK)
 {
  PQclear(res);
  ereport(ERROR,
    (errmsg("could not receive timeline history file from "
      "the primary server: %s",
      pchomp(PQerrorMessage(conn->streamConn)))));
 }
 if (PQnfields(res) != 2 || PQntuples(res) != 1)
 {
  int ntuples = PQntuples(res);
  int nfields = PQnfields(res);

  PQclear(res);
  ereport(ERROR,
    (errmsg("invalid response from primary server"),
     errdetail("Expected 1 tuple with 2 fields, got %d tuples with %d fields.",
         ntuples, nfields)));
 }
 *filename = pstrdup(PQgetvalue(res, 0, 0));

 *len = PQgetlength(res, 0, 1);
 *content = palloc(*len);
 memcpy(*content, PQgetvalue(res, 0, 1), *len);
 PQclear(res);
}
