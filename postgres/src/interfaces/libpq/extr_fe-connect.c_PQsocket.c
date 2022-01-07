
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ sock; } ;
typedef TYPE_1__ PGconn ;


 scalar_t__ PGINVALID_SOCKET ;

int
PQsocket(const PGconn *conn)
{
 if (!conn)
  return -1;
 return (conn->sock != PGINVALID_SOCKET) ? conn->sock : -1;
}
