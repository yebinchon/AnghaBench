
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_16__ {int len; char* data; } ;
struct TYPE_15__ {scalar_t__ asyncStatus; int noticeHooks; TYPE_3__ errorMessage; } ;
struct TYPE_14__ {scalar_t__ resultStatus; } ;
typedef TYPE_1__ PGresult ;
typedef TYPE_2__ PGconn ;


 scalar_t__ PGASYNC_BUSY ;
 scalar_t__ PGASYNC_COPY_IN ;
 scalar_t__ PGASYNC_COPY_OUT ;
 scalar_t__ PGRES_COMMAND_OK ;
 int PQclear (TYPE_1__*) ;
 TYPE_1__* PQgetResult (TYPE_2__*) ;
 scalar_t__ PQisBusy (TYPE_2__*) ;
 int PQreset (TYPE_2__*) ;
 int PQresetStart (TYPE_2__*) ;
 int libpq_gettext (char*) ;
 scalar_t__ pqFlush (TYPE_2__*) ;
 int pqInternalNotice (int *,char*,...) ;
 scalar_t__ pqIsnonblocking (TYPE_2__*) ;
 int printfPQExpBuffer (TYPE_3__*,int ) ;
 int resetPQExpBuffer (TYPE_3__*) ;

int
pqEndcopy2(PGconn *conn)
{
 PGresult *result;

 if (conn->asyncStatus != PGASYNC_COPY_IN &&
  conn->asyncStatus != PGASYNC_COPY_OUT)
 {
  printfPQExpBuffer(&conn->errorMessage,
        libpq_gettext("no COPY in progress\n"));
  return 1;
 }





 if (pqFlush(conn) && pqIsnonblocking(conn))
  return 1;


 if (pqIsnonblocking(conn) && PQisBusy(conn))
  return 1;


 conn->asyncStatus = PGASYNC_BUSY;
 resetPQExpBuffer(&conn->errorMessage);


 result = PQgetResult(conn);


 if (result && result->resultStatus == PGRES_COMMAND_OK)
 {
  PQclear(result);
  return 0;
 }
 if (conn->errorMessage.len > 0)
 {

  char svLast = conn->errorMessage.data[conn->errorMessage.len - 1];

  if (svLast == '\n')
   conn->errorMessage.data[conn->errorMessage.len - 1] = '\0';
  pqInternalNotice(&conn->noticeHooks, "%s", conn->errorMessage.data);
  conn->errorMessage.data[conn->errorMessage.len - 1] = svLast;
 }

 PQclear(result);






 pqInternalNotice(&conn->noticeHooks,
      "lost synchronization with server, resetting connection");






 if (pqIsnonblocking(conn))
  PQresetStart(conn);
 else
  PQreset(conn);

 return 1;
}
