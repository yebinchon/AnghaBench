
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int nonblocking; int errorMessage; int xactStatus; int asyncStatus; int status; } ;
typedef TYPE_1__ PGconn ;


 int CONNECTION_BAD ;
 int PGASYNC_IDLE ;
 int PQTRANS_IDLE ;
 int pqClearAsyncResult (TYPE_1__*) ;
 int pqDropConnection (TYPE_1__*,int) ;
 int pqDropServerData (TYPE_1__*) ;
 int release_conn_addrinfo (TYPE_1__*) ;
 int resetPQExpBuffer (int *) ;
 int sendTerminateConn (TYPE_1__*) ;

__attribute__((used)) static void
closePGconn(PGconn *conn)
{



 sendTerminateConn(conn);







 conn->nonblocking = 0;




 pqDropConnection(conn, 1);
 conn->status = CONNECTION_BAD;
 conn->asyncStatus = PGASYNC_IDLE;
 conn->xactStatus = PQTRANS_IDLE;
 pqClearAsyncResult(conn);
 resetPQExpBuffer(&conn->errorMessage);
 release_conn_addrinfo(conn);


 pqDropServerData(conn);
}
