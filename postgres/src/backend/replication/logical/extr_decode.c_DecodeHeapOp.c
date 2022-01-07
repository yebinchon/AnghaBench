
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_15__ {int origptr; int record; } ;
typedef TYPE_1__ XLogRecordBuffer ;
typedef int TransactionId ;
struct TYPE_16__ {int reorder; scalar_t__ fast_forward; int * snapshot_builder; } ;
typedef int SnapBuild ;
typedef TYPE_2__ LogicalDecodingContext ;


 int DecodeDelete (TYPE_2__*,TYPE_1__*) ;
 int DecodeInsert (TYPE_2__*,TYPE_1__*) ;
 int DecodeSpecConfirm (TYPE_2__*,TYPE_1__*) ;
 int DecodeTruncate (TYPE_2__*,TYPE_1__*) ;
 int DecodeUpdate (TYPE_2__*,TYPE_1__*) ;
 int ERROR ;
 int ReorderBufferProcessXid (int ,int ,int ) ;
 int ReorderBufferXidSetCatalogChanges (int ,int ,int ) ;
 scalar_t__ SNAPBUILD_FULL_SNAPSHOT ;
 scalar_t__ SnapBuildCurrentState (int *) ;
 int SnapBuildProcessChange (int *,int ,int ) ;
 int TransactionIdIsValid (int ) ;






 int XLOG_HEAP_OPMASK ;


 int XLogRecGetInfo (int ) ;
 int XLogRecGetXid (int ) ;
 int elog (int ,char*,int) ;

__attribute__((used)) static void
DecodeHeapOp(LogicalDecodingContext *ctx, XLogRecordBuffer *buf)
{
 uint8 info = XLogRecGetInfo(buf->record) & XLOG_HEAP_OPMASK;
 TransactionId xid = XLogRecGetXid(buf->record);
 SnapBuild *builder = ctx->snapshot_builder;

 ReorderBufferProcessXid(ctx->reorder, xid, buf->origptr);





 if (SnapBuildCurrentState(builder) < SNAPBUILD_FULL_SNAPSHOT ||
  ctx->fast_forward)
  return;

 switch (info)
 {
  case 131:
   if (SnapBuildProcessChange(builder, xid, buf->origptr))
    DecodeInsert(ctx, buf);
   break;






  case 133:
  case 128:
   if (SnapBuildProcessChange(builder, xid, buf->origptr))
    DecodeUpdate(ctx, buf);
   break;

  case 134:
   if (SnapBuildProcessChange(builder, xid, buf->origptr))
    DecodeDelete(ctx, buf);
   break;

  case 129:
   if (SnapBuildProcessChange(builder, xid, buf->origptr))
    DecodeTruncate(ctx, buf);
   break;

  case 132:
   if (!TransactionIdIsValid(xid))
    break;

   SnapBuildProcessChange(builder, xid, buf->origptr);
   ReorderBufferXidSetCatalogChanges(ctx->reorder, xid, buf->origptr);
   break;

  case 135:
   if (SnapBuildProcessChange(builder, xid, buf->origptr))
    DecodeSpecConfirm(ctx, buf);
   break;

  case 130:

   break;

  default:
   elog(ERROR, "unexpected RM_HEAP_ID record type: %u", info);
   break;
 }
}
