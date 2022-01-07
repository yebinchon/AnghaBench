
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int data; } ;
struct TYPE_10__ {TYPE_1__ workBuffer; } ;
typedef TYPE_1__ PQExpBufferData ;
typedef TYPE_2__ PGconn ;


 int EOF ;
 int initPQExpBuffer (TYPE_1__*) ;
 scalar_t__ pqGets (TYPE_1__*,TYPE_2__*) ;
 int pqSaveParameterStatus (TYPE_2__*,int ,int ) ;
 int termPQExpBuffer (TYPE_1__*) ;

__attribute__((used)) static int
getParameterStatus(PGconn *conn)
{
 PQExpBufferData valueBuf;


 if (pqGets(&conn->workBuffer, conn))
  return EOF;

 initPQExpBuffer(&valueBuf);
 if (pqGets(&valueBuf, conn))
 {
  termPQExpBuffer(&valueBuf);
  return EOF;
 }

 pqSaveParameterStatus(conn, conn->workBuffer.data, valueBuf.data);
 termPQExpBuffer(&valueBuf);
 return 0;
}
