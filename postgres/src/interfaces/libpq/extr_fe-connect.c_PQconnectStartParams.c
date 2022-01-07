
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {void* status; int errorMessage; } ;
typedef int PQconninfoOption ;
typedef TYPE_1__ PGconn ;


 void* CONNECTION_BAD ;
 int PQconninfoFree (int *) ;
 int connectDBStart (TYPE_1__*) ;
 int connectOptions2 (TYPE_1__*) ;
 int * conninfo_array_parse (char const* const*,char const* const*,int *,int,int) ;
 int fillPGconn (TYPE_1__*,int *) ;
 TYPE_1__* makeEmptyPGconn () ;

PGconn *
PQconnectStartParams(const char *const *keywords,
      const char *const *values,
      int expand_dbname)
{
 PGconn *conn;
 PQconninfoOption *connOptions;




 conn = makeEmptyPGconn();
 if (conn == ((void*)0))
  return ((void*)0);




 connOptions = conninfo_array_parse(keywords, values,
            &conn->errorMessage,
            1, expand_dbname);
 if (connOptions == ((void*)0))
 {
  conn->status = CONNECTION_BAD;

  return conn;
 }




 if (!fillPGconn(conn, connOptions))
 {
  PQconninfoFree(connOptions);
  return conn;
 }




 PQconninfoFree(connOptions);




 if (!connectOptions2(conn))
  return conn;




 if (!connectDBStart(conn))
 {

  conn->status = CONNECTION_BAD;
 }

 return conn;
}
