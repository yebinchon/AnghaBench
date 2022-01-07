
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_5__ {int origptr; int record; } ;
typedef TYPE_1__ XLogRecordBuffer ;
struct TYPE_6__ {int reorder; int * snapshot_builder; } ;
typedef int SnapBuild ;
typedef TYPE_2__ LogicalDecodingContext ;


 int ERROR ;
 int ReorderBufferProcessXid (int ,int ,int ) ;
 int SnapBuildSerializationPoint (int *,int ) ;
 int XLR_INFO_MASK ;
 int XLogRecGetInfo (int ) ;
 int XLogRecGetXid (int ) ;
 int elog (int ,char*,int) ;

__attribute__((used)) static void
DecodeXLogOp(LogicalDecodingContext *ctx, XLogRecordBuffer *buf)
{
 SnapBuild *builder = ctx->snapshot_builder;
 uint8 info = XLogRecGetInfo(buf->record) & ~XLR_INFO_MASK;

 ReorderBufferProcessXid(ctx->reorder, XLogRecGetXid(buf->record),
       buf->origptr);

 switch (info)
 {

  case 137:
  case 136:
   SnapBuildSerializationPoint(builder, buf->origptr);

   break;
  case 138:





   break;
  case 131:
  case 132:
  case 128:
  case 139:
  case 130:
  case 129:
  case 133:
  case 134:
  case 135:
   break;
  default:
   elog(ERROR, "unexpected RM_XLOG_ID record type: %u", info);
 }
}
