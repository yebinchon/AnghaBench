
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int streamConn; } ;
typedef TYPE_1__ WalReceiverConn ;


 int PQserverVersion (int ) ;

__attribute__((used)) static int
libpqrcv_server_version(WalReceiverConn *conn)
{
 return PQserverVersion(conn->streamConn);
}
