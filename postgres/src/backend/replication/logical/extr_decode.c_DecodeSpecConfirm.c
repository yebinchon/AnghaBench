
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_20__ {int origptr; int * record; } ;
typedef TYPE_5__ XLogRecordBuffer ;
typedef int XLogReaderState ;
struct TYPE_23__ {int reorder; TYPE_2__* slot; } ;
struct TYPE_22__ {scalar_t__ dbNode; } ;
struct TYPE_18__ {int clear_toast_afterwards; int relnode; } ;
struct TYPE_19__ {TYPE_3__ tp; } ;
struct TYPE_21__ {TYPE_4__ data; int origin_id; int action; } ;
struct TYPE_16__ {scalar_t__ database; } ;
struct TYPE_17__ {TYPE_1__ data; } ;
typedef TYPE_6__ ReorderBufferChange ;
typedef TYPE_7__ RelFileNode ;
typedef TYPE_8__ LogicalDecodingContext ;


 scalar_t__ FilterByOrigin (TYPE_8__*,int ) ;
 int REORDER_BUFFER_CHANGE_INTERNAL_SPEC_CONFIRM ;
 TYPE_6__* ReorderBufferGetChange (int ) ;
 int ReorderBufferQueueChange (int ,int ,int ,TYPE_6__*) ;
 int XLogRecGetBlockTag (int *,int ,TYPE_7__*,int *,int *) ;
 int XLogRecGetOrigin (int *) ;
 int XLogRecGetXid (int *) ;
 int memcpy (int *,TYPE_7__*,int) ;

__attribute__((used)) static void
DecodeSpecConfirm(LogicalDecodingContext *ctx, XLogRecordBuffer *buf)
{
 XLogReaderState *r = buf->record;
 ReorderBufferChange *change;
 RelFileNode target_node;


 XLogRecGetBlockTag(r, 0, &target_node, ((void*)0), ((void*)0));
 if (target_node.dbNode != ctx->slot->data.database)
  return;


 if (FilterByOrigin(ctx, XLogRecGetOrigin(r)))
  return;

 change = ReorderBufferGetChange(ctx->reorder);
 change->action = REORDER_BUFFER_CHANGE_INTERNAL_SPEC_CONFIRM;
 change->origin_id = XLogRecGetOrigin(r);

 memcpy(&change->data.tp.relnode, &target_node, sizeof(RelFileNode));

 change->data.tp.clear_toast_afterwards = 1;

 ReorderBufferQueueChange(ctx->reorder, XLogRecGetXid(r), buf->origptr, change);
}
