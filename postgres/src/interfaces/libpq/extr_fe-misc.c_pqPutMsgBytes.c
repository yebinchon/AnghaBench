
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ outMsgEnd; scalar_t__ outBuffer; } ;
typedef TYPE_1__ PGconn ;


 int EOF ;
 int memcpy (scalar_t__,void const*,size_t) ;
 scalar_t__ pqCheckOutBufferSpace (scalar_t__,TYPE_1__*) ;

__attribute__((used)) static int
pqPutMsgBytes(const void *buf, size_t len, PGconn *conn)
{

 if (pqCheckOutBufferSpace(conn->outMsgEnd + len, conn))
  return EOF;

 memcpy(conn->outBuffer + conn->outMsgEnd, buf, len);
 conn->outMsgEnd += len;

 return 0;
}
