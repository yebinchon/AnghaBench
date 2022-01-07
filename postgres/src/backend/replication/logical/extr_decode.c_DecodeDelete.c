
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
typedef TYPE_5__ xl_heap_delete ;
struct TYPE_22__ {int origptr; int * record; } ;
typedef TYPE_6__ XLogRecordBuffer ;
typedef int XLogReaderState ;
struct TYPE_25__ {int reorder; TYPE_2__* slot; } ;
struct TYPE_24__ {scalar_t__ dbNode; } ;
struct TYPE_19__ {int clear_toast_afterwards; int oldtuple; int relnode; } ;
struct TYPE_20__ {TYPE_3__ tp; } ;
struct TYPE_23__ {TYPE_4__ data; int origin_id; int action; } ;
struct TYPE_17__ {scalar_t__ database; } ;
struct TYPE_18__ {TYPE_1__ data; } ;
typedef scalar_t__ Size ;
typedef TYPE_7__ ReorderBufferChange ;
typedef TYPE_8__ RelFileNode ;
typedef TYPE_9__ LogicalDecodingContext ;


 int Assert (int) ;
 int DecodeXLogTuple (char*,scalar_t__,int ) ;
 scalar_t__ FilterByOrigin (TYPE_9__*,int ) ;
 int REORDER_BUFFER_CHANGE_DELETE ;
 TYPE_7__* ReorderBufferGetChange (int ) ;
 int ReorderBufferGetTupleBuf (int ,scalar_t__) ;
 int ReorderBufferQueueChange (int ,int ,int ,TYPE_7__*) ;
 scalar_t__ SizeOfHeapDelete ;
 scalar_t__ SizeOfHeapHeader ;
 int XLH_DELETE_CONTAINS_OLD ;
 int XLH_DELETE_IS_SUPER ;
 int XLogRecGetBlockTag (int *,int ,TYPE_8__*,int *,int *) ;
 scalar_t__ XLogRecGetData (int *) ;
 scalar_t__ XLogRecGetDataLen (int *) ;
 int XLogRecGetOrigin (int *) ;
 int XLogRecGetXid (int *) ;
 int memcpy (int *,TYPE_8__*,int) ;

__attribute__((used)) static void
DecodeDelete(LogicalDecodingContext *ctx, XLogRecordBuffer *buf)
{
 XLogReaderState *r = buf->record;
 xl_heap_delete *xlrec;
 ReorderBufferChange *change;
 RelFileNode target_node;

 xlrec = (xl_heap_delete *) XLogRecGetData(r);


 XLogRecGetBlockTag(r, 0, &target_node, ((void*)0), ((void*)0));
 if (target_node.dbNode != ctx->slot->data.database)
  return;





 if (xlrec->flags & XLH_DELETE_IS_SUPER)
  return;


 if (FilterByOrigin(ctx, XLogRecGetOrigin(r)))
  return;

 change = ReorderBufferGetChange(ctx->reorder);
 change->action = REORDER_BUFFER_CHANGE_DELETE;
 change->origin_id = XLogRecGetOrigin(r);

 memcpy(&change->data.tp.relnode, &target_node, sizeof(RelFileNode));


 if (xlrec->flags & XLH_DELETE_CONTAINS_OLD)
 {
  Size datalen = XLogRecGetDataLen(r) - SizeOfHeapDelete;
  Size tuplelen = datalen - SizeOfHeapHeader;

  Assert(XLogRecGetDataLen(r) > (SizeOfHeapDelete + SizeOfHeapHeader));

  change->data.tp.oldtuple =
   ReorderBufferGetTupleBuf(ctx->reorder, tuplelen);

  DecodeXLogTuple((char *) xlrec + SizeOfHeapDelete,
      datalen, change->data.tp.oldtuple);
 }

 change->data.tp.clear_toast_afterwards = 1;

 ReorderBufferQueueChange(ctx->reorder, XLogRecGetXid(r), buf->origptr, change);
}
