
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * recvBuf; int streamConn; } ;
typedef TYPE_1__ WalReceiverConn ;


 int PQfinish (int ) ;
 int PQfreemem (int *) ;
 int pfree (TYPE_1__*) ;

__attribute__((used)) static void
libpqrcv_disconnect(WalReceiverConn *conn)
{
 PQfinish(conn->streamConn);
 if (conn->recvBuf != ((void*)0))
  PQfreemem(conn->recvBuf);
 pfree(conn);
}
