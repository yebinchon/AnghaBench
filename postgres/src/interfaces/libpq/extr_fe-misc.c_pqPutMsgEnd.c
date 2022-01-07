
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_4__ {int outMsgEnd; int outCount; scalar_t__ outMsgStart; int outBuffer; scalar_t__ Pfdebug; } ;
typedef TYPE_1__ PGconn ;


 int EOF ;
 int fprintf (scalar_t__,char*,int) ;
 int memcpy (int,int*,int) ;
 int pg_hton32 (int) ;
 scalar_t__ pqSendSome (TYPE_1__*,int) ;

int
pqPutMsgEnd(PGconn *conn)
{
 if (conn->Pfdebug)
  fprintf(conn->Pfdebug, "To backend> Msg complete, length %u\n",
    conn->outMsgEnd - conn->outCount);


 if (conn->outMsgStart >= 0)
 {
  uint32 msgLen = conn->outMsgEnd - conn->outMsgStart;

  msgLen = pg_hton32(msgLen);
  memcpy(conn->outBuffer + conn->outMsgStart, &msgLen, 4);
 }


 conn->outCount = conn->outMsgEnd;

 if (conn->outCount >= 8192)
 {
  int toSend = conn->outCount - (conn->outCount % 8192);

  if (pqSendSome(conn, toSend) < 0)
   return EOF;

 }

 return 0;
}
