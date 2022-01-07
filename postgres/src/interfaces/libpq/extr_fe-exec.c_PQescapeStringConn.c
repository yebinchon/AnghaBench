
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int std_strings; int client_encoding; } ;
typedef TYPE_1__ PGconn ;


 size_t PQescapeStringInternal (TYPE_1__*,char*,char const*,size_t,int*,int ,int ) ;

size_t
PQescapeStringConn(PGconn *conn,
       char *to, const char *from, size_t length,
       int *error)
{
 if (!conn)
 {

  *to = '\0';
  if (error)
   *error = 1;
  return 0;
 }
 return PQescapeStringInternal(conn, to, from, length, error,
          conn->client_encoding,
          conn->std_strings);
}
