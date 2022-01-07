
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int XLogRecPtr ;
typedef int TransactionId ;
struct TYPE_5__ {int snapshot; } ;
struct TYPE_6__ {int action; TYPE_1__ data; } ;
typedef int Snapshot ;
typedef TYPE_2__ ReorderBufferChange ;
typedef int ReorderBuffer ;


 int REORDER_BUFFER_CHANGE_INTERNAL_SNAPSHOT ;
 TYPE_2__* ReorderBufferGetChange (int *) ;
 int ReorderBufferQueueChange (int *,int ,int ,TYPE_2__*) ;

void
ReorderBufferAddSnapshot(ReorderBuffer *rb, TransactionId xid,
       XLogRecPtr lsn, Snapshot snap)
{
 ReorderBufferChange *change = ReorderBufferGetChange(rb);

 change->data.snapshot = snap;
 change->action = REORDER_BUFFER_CHANGE_INTERNAL_SNAPSHOT;

 ReorderBufferQueueChange(rb, xid, lsn, change);
}
