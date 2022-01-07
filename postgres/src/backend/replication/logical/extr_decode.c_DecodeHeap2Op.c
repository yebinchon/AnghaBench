
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int xl_heap_new_cid ;
typedef int uint8 ;
struct TYPE_7__ {int origptr; int record; } ;
typedef TYPE_1__ XLogRecordBuffer ;
typedef int TransactionId ;
struct TYPE_8__ {scalar_t__ fast_forward; int reorder; int * snapshot_builder; } ;
typedef int SnapBuild ;
typedef TYPE_2__ LogicalDecodingContext ;


 int DecodeMultiInsert (TYPE_2__*,TYPE_1__*) ;
 int ERROR ;
 int ReorderBufferProcessXid (int ,int ,int ) ;
 scalar_t__ SNAPBUILD_FULL_SNAPSHOT ;
 scalar_t__ SnapBuildCurrentState (int *) ;
 int SnapBuildProcessChange (int *,int ,int ) ;
 int SnapBuildProcessNewCid (int *,int ,int ,int *) ;
 int XLOG_HEAP_OPMASK ;
 scalar_t__ XLogRecGetData (int ) ;
 int XLogRecGetInfo (int ) ;
 int XLogRecGetXid (int ) ;
 int elog (int ,char*,int) ;

__attribute__((used)) static void
DecodeHeap2Op(LogicalDecodingContext *ctx, XLogRecordBuffer *buf)
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
   if (!ctx->fast_forward &&
    SnapBuildProcessChange(builder, xid, buf->origptr))
    DecodeMultiInsert(ctx, buf);
   break;
  case 130:
   {
    xl_heap_new_cid *xlrec;

    xlrec = (xl_heap_new_cid *) XLogRecGetData(buf->record);
    SnapBuildProcessNewCid(builder, xid, buf->origptr, xlrec);

    break;
   }
  case 129:






   break;





  case 133:
  case 135:
  case 134:
  case 128:
  case 132:
   break;
  default:
   elog(ERROR, "unexpected RM_HEAP2_ID record type: %u", info);
 }
}
