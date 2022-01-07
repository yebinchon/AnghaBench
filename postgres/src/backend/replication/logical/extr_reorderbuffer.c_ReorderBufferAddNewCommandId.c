
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int XLogRecPtr ;
typedef int TransactionId ;
struct TYPE_5__ {int command_id; } ;
struct TYPE_6__ {int action; TYPE_1__ data; } ;
typedef TYPE_2__ ReorderBufferChange ;
typedef int ReorderBuffer ;
typedef int CommandId ;


 int REORDER_BUFFER_CHANGE_INTERNAL_COMMAND_ID ;
 TYPE_2__* ReorderBufferGetChange (int *) ;
 int ReorderBufferQueueChange (int *,int ,int ,TYPE_2__*) ;

void
ReorderBufferAddNewCommandId(ReorderBuffer *rb, TransactionId xid,
        XLogRecPtr lsn, CommandId cid)
{
 ReorderBufferChange *change = ReorderBufferGetChange(rb);

 change->data.command_id = cid;
 change->action = REORDER_BUFFER_CHANGE_INTERNAL_COMMAND_ID;

 ReorderBufferQueueChange(rb, xid, lsn, change);
}
