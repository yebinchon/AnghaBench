
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGconn ;


 int STATUS_ERROR ;
 int STATUS_OK ;
 scalar_t__ pqFlush (int *) ;
 scalar_t__ pqPutMsgEnd (int *) ;
 scalar_t__ pqPutMsgStart (char,int,int *) ;
 scalar_t__ pqPutnchar (void const*,size_t,int *) ;

int
pqPacketSend(PGconn *conn, char pack_type,
    const void *buf, size_t buf_len)
{

 if (pqPutMsgStart(pack_type, 1, conn))
  return STATUS_ERROR;


 if (pqPutnchar(buf, buf_len, conn))
  return STATUS_ERROR;


 if (pqPutMsgEnd(conn))
  return STATUS_ERROR;


 if (pqFlush(conn))
  return STATUS_ERROR;

 return STATUS_OK;
}
