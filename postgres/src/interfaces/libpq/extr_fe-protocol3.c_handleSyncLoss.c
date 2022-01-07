
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int status; int asyncStatus; int errorMessage; } ;
typedef TYPE_1__ PGconn ;


 int CONNECTION_BAD ;
 int PGASYNC_READY ;
 int libpq_gettext (char*) ;
 int pqDropConnection (TYPE_1__*,int) ;
 int pqSaveErrorResult (TYPE_1__*) ;
 int printfPQExpBuffer (int *,int ,char,int) ;

__attribute__((used)) static void
handleSyncLoss(PGconn *conn, char id, int msgLength)
{
 printfPQExpBuffer(&conn->errorMessage,
       libpq_gettext(
         "lost synchronization with server: got message type \"%c\", length %d\n"),
       id, msgLength);

 pqSaveErrorResult(conn);
 conn->asyncStatus = PGASYNC_READY;

 pqDropConnection(conn, 1);
 conn->status = CONNECTION_BAD;
}
