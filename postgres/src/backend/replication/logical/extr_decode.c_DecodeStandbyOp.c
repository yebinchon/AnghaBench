
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int oldestRunningXid; } ;
typedef TYPE_1__ xl_running_xacts ;
struct TYPE_9__ {int msgs; int nmsgs; } ;
typedef TYPE_2__ xl_invalidations ;
typedef int uint8 ;
struct TYPE_10__ {int origptr; int * record; } ;
typedef TYPE_3__ XLogRecordBuffer ;
typedef int XLogReaderState ;
struct TYPE_11__ {int reorder; int fast_forward; int * snapshot_builder; } ;
typedef int SnapBuild ;
typedef TYPE_4__ LogicalDecodingContext ;


 int ERROR ;
 int ReorderBufferAbortOld (int ,int ) ;
 int ReorderBufferImmediateInvalidation (int ,int ,int ) ;
 int ReorderBufferProcessXid (int ,int ,int ) ;
 int SnapBuildProcessRunningXacts (int *,int ,TYPE_1__*) ;



 int XLR_INFO_MASK ;
 scalar_t__ XLogRecGetData (int *) ;
 int XLogRecGetInfo (int *) ;
 int XLogRecGetXid (int *) ;
 int elog (int ,char*,int) ;

__attribute__((used)) static void
DecodeStandbyOp(LogicalDecodingContext *ctx, XLogRecordBuffer *buf)
{
 SnapBuild *builder = ctx->snapshot_builder;
 XLogReaderState *r = buf->record;
 uint8 info = XLogRecGetInfo(r) & ~XLR_INFO_MASK;

 ReorderBufferProcessXid(ctx->reorder, XLogRecGetXid(r), buf->origptr);

 switch (info)
 {
  case 129:
   {
    xl_running_xacts *running = (xl_running_xacts *) XLogRecGetData(r);

    SnapBuildProcessRunningXacts(builder, buf->origptr, running);
    ReorderBufferAbortOld(ctx->reorder, running->oldestRunningXid);
   }
   break;
  case 128:
   break;
  case 130:
   {
    xl_invalidations *invalidations =
    (xl_invalidations *) XLogRecGetData(r);

    if (!ctx->fast_forward)
     ReorderBufferImmediateInvalidation(ctx->reorder,
                invalidations->nmsgs,
                invalidations->msgs);
   }
   break;
  default:
   elog(ERROR, "unexpected RM_STANDBY_ID record type: %u", info);
 }
}
