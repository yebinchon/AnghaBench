
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ status; int nonblocking; } ;
typedef TYPE_1__ PGconn ;


 scalar_t__ CONNECTION_BAD ;
 scalar_t__ pqFlush (TYPE_1__*) ;

int
PQsetnonblocking(PGconn *conn, int arg)
{
 bool barg;

 if (!conn || conn->status == CONNECTION_BAD)
  return -1;

 barg = (arg ? 1 : 0);


 if (barg == conn->nonblocking)
  return 0;
 if (pqFlush(conn))
  return -1;

 conn->nonblocking = barg;

 return 0;
}
