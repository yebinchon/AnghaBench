
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int XLogRecPtr ;
struct TYPE_7__ {int streamConn; scalar_t__ logical; } ;
typedef TYPE_1__ WalReceiverConn ;
struct TYPE_8__ {int data; } ;
typedef TYPE_2__ StringInfoData ;
typedef int PGresult ;
typedef int CRSSnapshotAction ;





 int CStringGetDatum (int ) ;
 int DatumGetLSN (int ) ;
 int DirectFunctionCall1Coll (int ,int ,int ) ;
 int ERROR ;
 int InvalidOid ;
 scalar_t__ PGRES_TUPLES_OK ;
 int PQclear (int *) ;
 int PQerrorMessage (int ) ;
 int PQgetisnull (int *,int ,int) ;
 int PQgetvalue (int *,int ,int) ;
 scalar_t__ PQresultStatus (int *) ;
 int appendStringInfo (TYPE_2__*,char*,char const*) ;
 int appendStringInfoString (TYPE_2__*,char*) ;
 int ereport (int ,int ) ;
 int errmsg (char*,char const*,int ) ;
 int initStringInfo (TYPE_2__*) ;
 int * libpqrcv_PQexec (int ,int ) ;
 int pchomp (int ) ;
 int pfree (int ) ;
 int pg_lsn_in ;
 char* pstrdup (int ) ;

__attribute__((used)) static char *
libpqrcv_create_slot(WalReceiverConn *conn, const char *slotname,
      bool temporary, CRSSnapshotAction snapshot_action,
      XLogRecPtr *lsn)
{
 PGresult *res;
 StringInfoData cmd;
 char *snapshot;

 initStringInfo(&cmd);

 appendStringInfo(&cmd, "CREATE_REPLICATION_SLOT \"%s\"", slotname);

 if (temporary)
  appendStringInfoString(&cmd, " TEMPORARY");

 if (conn->logical)
 {
  appendStringInfoString(&cmd, " LOGICAL pgoutput");
  switch (snapshot_action)
  {
   case 130:
    appendStringInfoString(&cmd, " EXPORT_SNAPSHOT");
    break;
   case 129:
    appendStringInfoString(&cmd, " NOEXPORT_SNAPSHOT");
    break;
   case 128:
    appendStringInfoString(&cmd, " USE_SNAPSHOT");
    break;
  }
 }

 res = libpqrcv_PQexec(conn->streamConn, cmd.data);
 pfree(cmd.data);

 if (PQresultStatus(res) != PGRES_TUPLES_OK)
 {
  PQclear(res);
  ereport(ERROR,
    (errmsg("could not create replication slot \"%s\": %s",
      slotname, pchomp(PQerrorMessage(conn->streamConn)))));
 }

 *lsn = DatumGetLSN(DirectFunctionCall1Coll(pg_lsn_in, InvalidOid,
              CStringGetDatum(PQgetvalue(res, 0, 1))));
 if (!PQgetisnull(res, 0, 2))
  snapshot = pstrdup(PQgetvalue(res, 0, 2));
 else
  snapshot = ((void*)0);

 PQclear(res);

 return snapshot;
}
