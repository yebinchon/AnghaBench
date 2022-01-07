
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ sock; scalar_t__ status; } ;
typedef TYPE_1__ PGconn ;


 scalar_t__ CONNECTION_OK ;
 scalar_t__ PGINVALID_SOCKET ;
 int pqFlush (TYPE_1__*) ;
 int pqPutMsgEnd (TYPE_1__*) ;
 int pqPutMsgStart (char,int,TYPE_1__*) ;

__attribute__((used)) static void
sendTerminateConn(PGconn *conn)
{




 if (conn->sock != PGINVALID_SOCKET && conn->status == CONNECTION_OK)
 {




  pqPutMsgStart('X', 0, conn);
  pqPutMsgEnd(conn);
  (void) pqFlush(conn);
 }
}
