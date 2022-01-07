
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ status; } ;
typedef TYPE_1__ PGconn ;


 scalar_t__ CONNECTION_BAD ;
 TYPE_1__* PQconnectStart (char const*) ;
 int connectDBComplete (TYPE_1__*) ;

PGconn *
PQconnectdb(const char *conninfo)
{
 PGconn *conn = PQconnectStart(conninfo);

 if (conn && conn->status != CONNECTION_BAD)
  (void) connectDBComplete(conn);

 return conn;
}
