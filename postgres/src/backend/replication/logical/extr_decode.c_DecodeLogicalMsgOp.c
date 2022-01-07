
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ dbId; int prefix_size; int message; int message_size; scalar_t__ transactional; } ;
typedef TYPE_3__ xl_logical_message ;
typedef scalar_t__ uint8 ;
struct TYPE_12__ {int endptr; int origptr; int * record; } ;
typedef TYPE_4__ XLogRecordBuffer ;
typedef int XLogReaderState ;
typedef int TransactionId ;
struct TYPE_13__ {int reorder; TYPE_2__* slot; scalar_t__ fast_forward; int * snapshot_builder; } ;
struct TYPE_9__ {scalar_t__ database; } ;
struct TYPE_10__ {TYPE_1__ data; } ;
typedef int Snapshot ;
typedef int SnapBuild ;
typedef int RepOriginId ;
typedef TYPE_5__ LogicalDecodingContext ;


 int ERROR ;
 scalar_t__ FilterByOrigin (TYPE_5__*,int ) ;
 int ReorderBufferProcessXid (int ,int ,int ) ;
 int ReorderBufferQueueMessage (int ,int ,int ,int ,scalar_t__,int ,int ,int ) ;
 scalar_t__ SNAPBUILD_CONSISTENT ;
 scalar_t__ SNAPBUILD_FULL_SNAPSHOT ;
 scalar_t__ SnapBuildCurrentState (int *) ;
 int SnapBuildGetOrBuildSnapshot (int *,int ) ;
 int SnapBuildProcessChange (int *,int ,int ) ;
 scalar_t__ SnapBuildXactNeedsSkip (int *,int ) ;
 scalar_t__ XLOG_LOGICAL_MESSAGE ;
 scalar_t__ XLR_INFO_MASK ;
 scalar_t__ XLogRecGetData (int *) ;
 scalar_t__ XLogRecGetInfo (int *) ;
 int XLogRecGetOrigin (int *) ;
 int XLogRecGetXid (int *) ;
 int elog (int ,char*,scalar_t__) ;

__attribute__((used)) static void
DecodeLogicalMsgOp(LogicalDecodingContext *ctx, XLogRecordBuffer *buf)
{
 SnapBuild *builder = ctx->snapshot_builder;
 XLogReaderState *r = buf->record;
 TransactionId xid = XLogRecGetXid(r);
 uint8 info = XLogRecGetInfo(r) & ~XLR_INFO_MASK;
 RepOriginId origin_id = XLogRecGetOrigin(r);
 Snapshot snapshot;
 xl_logical_message *message;

 if (info != XLOG_LOGICAL_MESSAGE)
  elog(ERROR, "unexpected RM_LOGICALMSG_ID record type: %u", info);

 ReorderBufferProcessXid(ctx->reorder, XLogRecGetXid(r), buf->origptr);





 if (SnapBuildCurrentState(builder) < SNAPBUILD_FULL_SNAPSHOT ||
  ctx->fast_forward)
  return;

 message = (xl_logical_message *) XLogRecGetData(r);

 if (message->dbId != ctx->slot->data.database ||
  FilterByOrigin(ctx, origin_id))
  return;

 if (message->transactional &&
  !SnapBuildProcessChange(builder, xid, buf->origptr))
  return;
 else if (!message->transactional &&
    (SnapBuildCurrentState(builder) != SNAPBUILD_CONSISTENT ||
     SnapBuildXactNeedsSkip(builder, buf->origptr)))
  return;

 snapshot = SnapBuildGetOrBuildSnapshot(builder, xid);
 ReorderBufferQueueMessage(ctx->reorder, xid, snapshot, buf->endptr,
         message->transactional,
         message->message,

         message->message_size,
         message->message + message->prefix_size);
}
