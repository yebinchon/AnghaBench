
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int outCount; char* outBuffer; int outMsgStart; int outMsgEnd; scalar_t__ Pfdebug; int pversion; } ;
typedef TYPE_1__ PGconn ;


 int EOF ;
 int PG_PROTOCOL_MAJOR (int ) ;
 int fprintf (scalar_t__,char*,char) ;
 scalar_t__ pqCheckOutBufferSpace (int,TYPE_1__*) ;

int
pqPutMsgStart(char msg_type, bool force_len, PGconn *conn)
{
 int lenPos;
 int endPos;


 if (msg_type)
  endPos = conn->outCount + 1;
 else
  endPos = conn->outCount;


 if (force_len || PG_PROTOCOL_MAJOR(conn->pversion) >= 3)
 {
  lenPos = endPos;

  endPos += 4;
 }
 else
  lenPos = -1;


 if (pqCheckOutBufferSpace(endPos, conn))
  return EOF;

 if (msg_type)
  conn->outBuffer[conn->outCount] = msg_type;

 conn->outMsgStart = lenPos;
 conn->outMsgEnd = endPos;


 if (conn->Pfdebug)
  fprintf(conn->Pfdebug, "To backend> Msg %c\n",
    msg_type ? msg_type : ' ');

 return 0;
}
