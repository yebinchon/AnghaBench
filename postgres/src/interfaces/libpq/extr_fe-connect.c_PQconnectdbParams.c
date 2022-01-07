
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ status; } ;
typedef TYPE_1__ PGconn ;


 scalar_t__ CONNECTION_BAD ;
 TYPE_1__* PQconnectStartParams (char const* const*,char const* const*,int) ;
 int connectDBComplete (TYPE_1__*) ;

PGconn *
PQconnectdbParams(const char *const *keywords,
      const char *const *values,
      int expand_dbname)
{
 PGconn *conn = PQconnectStartParams(keywords, values, expand_dbname);

 if (conn && conn->status != CONNECTION_BAD)
  (void) connectDBComplete(conn);

 return conn;

}
