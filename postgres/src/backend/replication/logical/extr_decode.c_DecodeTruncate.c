
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_18__ {scalar_t__ dbId; int flags; int nrelids; int relids; } ;
typedef TYPE_5__ xl_heap_truncate ;
struct TYPE_19__ {int origptr; int * record; } ;
typedef TYPE_6__ XLogRecordBuffer ;
typedef int XLogReaderState ;
struct TYPE_21__ {int reorder; TYPE_2__* slot; } ;
struct TYPE_16__ {int cascade; int restart_seqs; int nrelids; int relids; } ;
struct TYPE_17__ {TYPE_3__ truncate; } ;
struct TYPE_20__ {TYPE_4__ data; int origin_id; int action; } ;
struct TYPE_14__ {scalar_t__ database; } ;
struct TYPE_15__ {TYPE_1__ data; } ;
typedef TYPE_7__ ReorderBufferChange ;
typedef int Oid ;
typedef TYPE_8__ LogicalDecodingContext ;


 scalar_t__ FilterByOrigin (TYPE_8__*,int ) ;
 int REORDER_BUFFER_CHANGE_TRUNCATE ;
 TYPE_7__* ReorderBufferGetChange (int ) ;
 int ReorderBufferGetRelids (int ,int) ;
 int ReorderBufferQueueChange (int ,int ,int ,TYPE_7__*) ;
 int XLH_TRUNCATE_CASCADE ;
 int XLH_TRUNCATE_RESTART_SEQS ;
 scalar_t__ XLogRecGetData (int *) ;
 int XLogRecGetOrigin (int *) ;
 int XLogRecGetXid (int *) ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static void
DecodeTruncate(LogicalDecodingContext *ctx, XLogRecordBuffer *buf)
{
 XLogReaderState *r = buf->record;
 xl_heap_truncate *xlrec;
 ReorderBufferChange *change;

 xlrec = (xl_heap_truncate *) XLogRecGetData(r);


 if (xlrec->dbId != ctx->slot->data.database)
  return;


 if (FilterByOrigin(ctx, XLogRecGetOrigin(r)))
  return;

 change = ReorderBufferGetChange(ctx->reorder);
 change->action = REORDER_BUFFER_CHANGE_TRUNCATE;
 change->origin_id = XLogRecGetOrigin(r);
 if (xlrec->flags & XLH_TRUNCATE_CASCADE)
  change->data.truncate.cascade = 1;
 if (xlrec->flags & XLH_TRUNCATE_RESTART_SEQS)
  change->data.truncate.restart_seqs = 1;
 change->data.truncate.nrelids = xlrec->nrelids;
 change->data.truncate.relids = ReorderBufferGetRelids(ctx->reorder,
                xlrec->nrelids);
 memcpy(change->data.truncate.relids, xlrec->relids,
     xlrec->nrelids * sizeof(Oid));
 ReorderBufferQueueChange(ctx->reorder, XLogRecGetXid(r),
        buf->origptr, change);
}
