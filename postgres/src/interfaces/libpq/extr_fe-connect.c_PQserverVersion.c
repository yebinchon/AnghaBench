
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ status; int sversion; } ;
typedef TYPE_1__ PGconn ;


 scalar_t__ CONNECTION_BAD ;

int
PQserverVersion(const PGconn *conn)
{
 if (!conn)
  return 0;
 if (conn->status == CONNECTION_BAD)
  return 0;
 return conn->sversion;
}
