
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* XLogRecPtr ;
typedef int TransactionId ;
struct TYPE_3__ {void* end_lsn; void* final_lsn; } ;
typedef TYPE_1__ ReorderBufferTXN ;
typedef int ReorderBuffer ;


 int InvalidXLogRecPtr ;
 int ReorderBufferAssignChild (int *,int ,int ,int ) ;
 TYPE_1__* ReorderBufferTXNByXid (int *,int ,int,int *,int ,int) ;

void
ReorderBufferCommitChild(ReorderBuffer *rb, TransactionId xid,
       TransactionId subxid, XLogRecPtr commit_lsn,
       XLogRecPtr end_lsn)
{
 ReorderBufferTXN *subtxn;

 subtxn = ReorderBufferTXNByXid(rb, subxid, 0, ((void*)0),
           InvalidXLogRecPtr, 0);




 if (!subtxn)
  return;

 subtxn->final_lsn = commit_lsn;
 subtxn->end_lsn = end_lsn;





 ReorderBufferAssignChild(rb, xid, subxid, InvalidXLogRecPtr);
}
