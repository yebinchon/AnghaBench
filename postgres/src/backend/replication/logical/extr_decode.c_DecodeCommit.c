
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int xinfo; scalar_t__ nmsgs; int nsubxacts; scalar_t__ dbId; int * subxacts; int msgs; int origin_timestamp; int origin_lsn; int xact_time; } ;
typedef TYPE_3__ xl_xact_parsed_commit ;
struct TYPE_13__ {int endptr; int origptr; int record; } ;
typedef TYPE_4__ XLogRecordBuffer ;
typedef int XLogRecPtr ;
typedef int TransactionId ;
typedef int TimestampTz ;
struct TYPE_14__ {int reorder; scalar_t__ fast_forward; TYPE_2__* slot; int snapshot_builder; } ;
struct TYPE_10__ {scalar_t__ database; } ;
struct TYPE_11__ {TYPE_1__ data; } ;
typedef int RepOriginId ;
typedef TYPE_5__ LogicalDecodingContext ;


 scalar_t__ FilterByOrigin (TYPE_5__*,int ) ;
 scalar_t__ InvalidOid ;
 int InvalidXLogRecPtr ;
 int ReorderBufferAddInvalidations (int ,int ,int ,scalar_t__,int ) ;
 int ReorderBufferCommit (int ,int ,int ,int ,int ,int ,int ) ;
 int ReorderBufferCommitChild (int ,int ,int ,int ,int ) ;
 int ReorderBufferForget (int ,int ,int ) ;
 int ReorderBufferXidSetCatalogChanges (int ,int ,int ) ;
 int SnapBuildCommitTxn (int ,int ,int ,int,int *) ;
 scalar_t__ SnapBuildXactNeedsSkip (int ,int ) ;
 int XACT_XINFO_HAS_ORIGIN ;
 int XLogRecGetOrigin (int ) ;

__attribute__((used)) static void
DecodeCommit(LogicalDecodingContext *ctx, XLogRecordBuffer *buf,
    xl_xact_parsed_commit *parsed, TransactionId xid)
{
 XLogRecPtr origin_lsn = InvalidXLogRecPtr;
 TimestampTz commit_time = parsed->xact_time;
 RepOriginId origin_id = XLogRecGetOrigin(buf->record);
 int i;

 if (parsed->xinfo & XACT_XINFO_HAS_ORIGIN)
 {
  origin_lsn = parsed->origin_lsn;
  commit_time = parsed->origin_timestamp;
 }






 if (parsed->nmsgs > 0)
 {
  if (!ctx->fast_forward)
   ReorderBufferAddInvalidations(ctx->reorder, xid, buf->origptr,
            parsed->nmsgs, parsed->msgs);
  ReorderBufferXidSetCatalogChanges(ctx->reorder, xid, buf->origptr);
 }

 SnapBuildCommitTxn(ctx->snapshot_builder, buf->origptr, xid,
        parsed->nsubxacts, parsed->subxacts);
 if (SnapBuildXactNeedsSkip(ctx->snapshot_builder, buf->origptr) ||
  (parsed->dbId != InvalidOid && parsed->dbId != ctx->slot->data.database) ||
  ctx->fast_forward || FilterByOrigin(ctx, origin_id))
 {
  for (i = 0; i < parsed->nsubxacts; i++)
  {
   ReorderBufferForget(ctx->reorder, parsed->subxacts[i], buf->origptr);
  }
  ReorderBufferForget(ctx->reorder, xid, buf->origptr);

  return;
 }


 for (i = 0; i < parsed->nsubxacts; i++)
 {
  ReorderBufferCommitChild(ctx->reorder, xid, parsed->subxacts[i],
         buf->origptr, buf->endptr);
 }


 ReorderBufferCommit(ctx->reorder, xid, buf->origptr, buf->endptr,
      commit_time, origin_id, origin_lsn);
}
