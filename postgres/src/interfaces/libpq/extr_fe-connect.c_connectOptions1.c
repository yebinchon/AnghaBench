
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* status; int errorMessage; } ;
typedef int PQconninfoOption ;
typedef TYPE_1__ PGconn ;


 void* CONNECTION_BAD ;
 int PQconninfoFree (int *) ;
 int fillPGconn (TYPE_1__*,int *) ;
 int * parse_connection_string (char const*,int *,int) ;

__attribute__((used)) static bool
connectOptions1(PGconn *conn, const char *conninfo)
{
 PQconninfoOption *connOptions;




 connOptions = parse_connection_string(conninfo, &conn->errorMessage, 1);
 if (connOptions == ((void*)0))
 {
  conn->status = CONNECTION_BAD;

  return 0;
 }




 if (!fillPGconn(conn, connOptions))
 {
  conn->status = CONNECTION_BAD;
  PQconninfoFree(connOptions);
  return 0;
 }




 PQconninfoFree(connOptions);

 return 1;
}
