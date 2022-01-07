
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int status; } ;
typedef TYPE_1__ PGconn ;


 int CONNECTION_BAD ;
 int connectDBStart (TYPE_1__*) ;
 int connectOptions1 (TYPE_1__*,char const*) ;
 int connectOptions2 (TYPE_1__*) ;
 TYPE_1__* makeEmptyPGconn () ;

PGconn *
PQconnectStart(const char *conninfo)
{
 PGconn *conn;




 conn = makeEmptyPGconn();
 if (conn == ((void*)0))
  return ((void*)0);




 if (!connectOptions1(conn, conninfo))
  return conn;




 if (!connectOptions2(conn))
  return conn;




 if (!connectDBStart(conn))
 {

  conn->status = CONNECTION_BAD;
 }

 return conn;
}
