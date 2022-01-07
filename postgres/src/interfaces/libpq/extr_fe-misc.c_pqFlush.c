
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ outCount; scalar_t__ Pfdebug; } ;
typedef TYPE_1__ PGconn ;


 int fflush (scalar_t__) ;
 int pqSendSome (TYPE_1__*,scalar_t__) ;

int
pqFlush(PGconn *conn)
{
 if (conn->Pfdebug)
  fflush(conn->Pfdebug);

 if (conn->outCount > 0)
  return pqSendSome(conn, conn->outCount);

 return 0;
}
