
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int XLogRecPtr ;
typedef scalar_t__ TransactionId ;
typedef int ReorderBuffer ;


 scalar_t__ InvalidTransactionId ;
 int ReorderBufferTXNByXid (int *,scalar_t__,int,int *,int ,int) ;

void
ReorderBufferProcessXid(ReorderBuffer *rb, TransactionId xid, XLogRecPtr lsn)
{

 if (xid != InvalidTransactionId)
  ReorderBufferTXNByXid(rb, xid, 1, ((void*)0), lsn, 1);
}
