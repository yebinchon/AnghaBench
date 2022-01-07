
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sversion; int std_strings; } ;
typedef TYPE_1__ PGconn ;


 unsigned char* PQescapeByteaInternal (TYPE_1__*,unsigned char const*,size_t,size_t*,int ,int) ;

unsigned char *
PQescapeByteaConn(PGconn *conn,
      const unsigned char *from, size_t from_length,
      size_t *to_length)
{
 if (!conn)
  return ((void*)0);
 return PQescapeByteaInternal(conn, from, from_length, to_length,
         conn->std_strings,
         (conn->sversion >= 90000));
}
