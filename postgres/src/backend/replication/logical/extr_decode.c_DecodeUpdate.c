
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_9__ ;
typedef struct TYPE_24__ TYPE_8__ ;
typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_21__ {int flags; } ;
typedef TYPE_5__ xl_heap_update ;
struct TYPE_22__ {int origptr; int * record; } ;
typedef TYPE_6__ XLogRecordBuffer ;
typedef int XLogReaderState ;
struct TYPE_25__ {int reorder; TYPE_2__* slot; } ;
struct TYPE_24__ {scalar_t__ dbNode; } ;
struct TYPE_19__ {int clear_toast_afterwards; void* oldtuple; void* newtuple; int relnode; } ;
struct TYPE_20__ {TYPE_3__ tp; } ;
struct TYPE_23__ {TYPE_4__ data; int origin_id; int action; } ;
struct TYPE_17__ {scalar_t__ database; } ;
struct TYPE_18__ {TYPE_1__ data; } ;
typedef int Size ;
typedef TYPE_7__ ReorderBufferChange ;
typedef TYPE_8__ RelFileNode ;
typedef TYPE_9__ LogicalDecodingContext ;


 int DecodeXLogTuple (char*,int,void*) ;
 scalar_t__ FilterByOrigin (TYPE_9__*,int ) ;
 int REORDER_BUFFER_CHANGE_UPDATE ;
 TYPE_7__* ReorderBufferGetChange (int ) ;
 void* ReorderBufferGetTupleBuf (int ,int) ;
 int ReorderBufferQueueChange (int ,int ,int ,TYPE_7__*) ;
 int SizeOfHeapHeader ;
 int SizeOfHeapUpdate ;
 int XLH_UPDATE_CONTAINS_NEW_TUPLE ;
 int XLH_UPDATE_CONTAINS_OLD ;
 char* XLogRecGetBlockData (int *,int ,int*) ;
 int XLogRecGetBlockTag (int *,int ,TYPE_8__*,int *,int *) ;
 char* XLogRecGetData (int *) ;
 int XLogRecGetDataLen (int *) ;
 int XLogRecGetOrigin (int *) ;
 int XLogRecGetXid (int *) ;
 int memcpy (int *,TYPE_8__*,int) ;

__attribute__((used)) static void
DecodeUpdate(LogicalDecodingContext *ctx, XLogRecordBuffer *buf)
{
 XLogReaderState *r = buf->record;
 xl_heap_update *xlrec;
 ReorderBufferChange *change;
 char *data;
 RelFileNode target_node;

 xlrec = (xl_heap_update *) XLogRecGetData(r);


 XLogRecGetBlockTag(r, 0, &target_node, ((void*)0), ((void*)0));
 if (target_node.dbNode != ctx->slot->data.database)
  return;


 if (FilterByOrigin(ctx, XLogRecGetOrigin(r)))
  return;

 change = ReorderBufferGetChange(ctx->reorder);
 change->action = REORDER_BUFFER_CHANGE_UPDATE;
 change->origin_id = XLogRecGetOrigin(r);
 memcpy(&change->data.tp.relnode, &target_node, sizeof(RelFileNode));

 if (xlrec->flags & XLH_UPDATE_CONTAINS_NEW_TUPLE)
 {
  Size datalen;
  Size tuplelen;

  data = XLogRecGetBlockData(r, 0, &datalen);

  tuplelen = datalen - SizeOfHeapHeader;

  change->data.tp.newtuple =
   ReorderBufferGetTupleBuf(ctx->reorder, tuplelen);

  DecodeXLogTuple(data, datalen, change->data.tp.newtuple);
 }

 if (xlrec->flags & XLH_UPDATE_CONTAINS_OLD)
 {
  Size datalen;
  Size tuplelen;


  data = XLogRecGetData(r) + SizeOfHeapUpdate;
  datalen = XLogRecGetDataLen(r) - SizeOfHeapUpdate;
  tuplelen = datalen - SizeOfHeapHeader;

  change->data.tp.oldtuple =
   ReorderBufferGetTupleBuf(ctx->reorder, tuplelen);

  DecodeXLogTuple(data, datalen, change->data.tp.oldtuple);
 }

 change->data.tp.clear_toast_afterwards = 1;

 ReorderBufferQueueChange(ctx->reorder, XLogRecGetXid(r), buf->origptr, change);
}
