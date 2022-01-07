
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int streamConn; } ;
typedef TYPE_1__ WalReceiverConn ;
typedef scalar_t__ TimeLineID ;
typedef int PGresult ;


 int ERROR ;
 scalar_t__ PGRES_COMMAND_OK ;
 scalar_t__ PGRES_COPY_OUT ;
 scalar_t__ PGRES_TUPLES_OK ;
 int PQclear (int *) ;
 scalar_t__ PQendcopy (int ) ;
 int PQerrorMessage (int ) ;
 scalar_t__ PQflush (int ) ;
 int PQgetvalue (int *,int ,int ) ;
 int PQnfields (int *) ;
 int PQntuples (int *) ;
 scalar_t__ PQputCopyEnd (int ,int *) ;
 scalar_t__ PQresultStatus (int *) ;
 int ereport (int ,int ) ;
 int errmsg (char*,...) ;
 int * libpqrcv_PQgetResult (int ) ;
 int pchomp (int ) ;
 scalar_t__ pg_strtoint32 (int ) ;

__attribute__((used)) static void
libpqrcv_endstreaming(WalReceiverConn *conn, TimeLineID *next_tli)
{
 PGresult *res;





 if (PQputCopyEnd(conn->streamConn, ((void*)0)) <= 0 ||
  PQflush(conn->streamConn))
  ereport(ERROR,
    (errmsg("could not send end-of-streaming message to primary: %s",
      pchomp(PQerrorMessage(conn->streamConn)))));

 *next_tli = 0;
 res = libpqrcv_PQgetResult(conn->streamConn);
 if (PQresultStatus(res) == PGRES_TUPLES_OK)
 {




  if (PQnfields(res) < 2 || PQntuples(res) != 1)
   ereport(ERROR,
     (errmsg("unexpected result set after end-of-streaming")));
  *next_tli = pg_strtoint32(PQgetvalue(res, 0, 0));
  PQclear(res);


  res = libpqrcv_PQgetResult(conn->streamConn);
 }
 else if (PQresultStatus(res) == PGRES_COPY_OUT)
 {
  PQclear(res);


  if (PQendcopy(conn->streamConn))
   ereport(ERROR,
     (errmsg("error while shutting down streaming COPY: %s",
       pchomp(PQerrorMessage(conn->streamConn)))));


  res = libpqrcv_PQgetResult(conn->streamConn);
 }

 if (PQresultStatus(res) != PGRES_COMMAND_OK)
  ereport(ERROR,
    (errmsg("error reading result of streaming command: %s",
      pchomp(PQerrorMessage(conn->streamConn)))));
 PQclear(res);


 res = libpqrcv_PQgetResult(conn->streamConn);
 if (res != ((void*)0))
  ereport(ERROR,
    (errmsg("unexpected result after CommandComplete: %s",
      pchomp(PQerrorMessage(conn->streamConn)))));
}
