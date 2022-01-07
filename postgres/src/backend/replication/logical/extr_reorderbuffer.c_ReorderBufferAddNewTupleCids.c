
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int XLogRecPtr ;
typedef int TransactionId ;
struct TYPE_7__ {void* combocid; void* cmax; void* cmin; int tid; int node; } ;
struct TYPE_8__ {TYPE_1__ tuplecid; } ;
struct TYPE_10__ {int node; int action; int lsn; TYPE_2__ data; } ;
struct TYPE_9__ {int ntuplecids; int tuplecids; } ;
typedef TYPE_3__ ReorderBufferTXN ;
typedef TYPE_4__ ReorderBufferChange ;
typedef int ReorderBuffer ;
typedef int RelFileNode ;
typedef int ItemPointerData ;
typedef void* CommandId ;


 int REORDER_BUFFER_CHANGE_INTERNAL_TUPLECID ;
 TYPE_4__* ReorderBufferGetChange (int *) ;
 TYPE_3__* ReorderBufferTXNByXid (int *,int ,int,int *,int ,int) ;
 int dlist_push_tail (int *,int *) ;

void
ReorderBufferAddNewTupleCids(ReorderBuffer *rb, TransactionId xid,
        XLogRecPtr lsn, RelFileNode node,
        ItemPointerData tid, CommandId cmin,
        CommandId cmax, CommandId combocid)
{
 ReorderBufferChange *change = ReorderBufferGetChange(rb);
 ReorderBufferTXN *txn;

 txn = ReorderBufferTXNByXid(rb, xid, 1, ((void*)0), lsn, 1);

 change->data.tuplecid.node = node;
 change->data.tuplecid.tid = tid;
 change->data.tuplecid.cmin = cmin;
 change->data.tuplecid.cmax = cmax;
 change->data.tuplecid.combocid = combocid;
 change->lsn = lsn;
 change->action = REORDER_BUFFER_CHANGE_INTERNAL_TUPLECID;

 dlist_push_tail(&txn->tuplecids, &change->node);
 txn->ntuplecids++;
}
