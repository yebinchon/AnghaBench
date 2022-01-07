
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_18__ {int * record; int origptr; int endptr; } ;
typedef TYPE_2__ XLogRecordBuffer ;
typedef int XLogReaderState ;
struct TYPE_19__ {int reorder; TYPE_1__* reader; } ;
struct TYPE_17__ {int EndRecPtr; int ReadRecPtr; } ;
typedef int RmgrIds ;
typedef TYPE_3__ LogicalDecodingContext ;


 int DecodeHeap2Op (TYPE_3__*,TYPE_2__*) ;
 int DecodeHeapOp (TYPE_3__*,TYPE_2__*) ;
 int DecodeLogicalMsgOp (TYPE_3__*,TYPE_2__*) ;
 int DecodeStandbyOp (TYPE_3__*,TYPE_2__*) ;
 int DecodeXLogOp (TYPE_3__*,TYPE_2__*) ;
 int DecodeXactOp (TYPE_3__*,TYPE_2__*) ;
 int ERROR ;
 int ReorderBufferProcessXid (int ,int ,int ) ;
 int XLogRecGetRmid (int *) ;
 int XLogRecGetXid (int *) ;
 int elog (int ,char*,int ) ;

void
LogicalDecodingProcessRecord(LogicalDecodingContext *ctx, XLogReaderState *record)
{
 XLogRecordBuffer buf;

 buf.origptr = ctx->reader->ReadRecPtr;
 buf.endptr = ctx->reader->EndRecPtr;
 buf.record = record;


 switch ((RmgrIds) XLogRecGetRmid(record))
 {




  case 128:
   DecodeXLogOp(ctx, &buf);
   break;

  case 129:
   DecodeXactOp(ctx, &buf);
   break;

  case 131:
   DecodeStandbyOp(ctx, &buf);
   break;

  case 141:
   DecodeHeap2Op(ctx, &buf);
   break;

  case 140:
   DecodeHeapOp(ctx, &buf);
   break;

  case 139:
   DecodeLogicalMsgOp(ctx, &buf);
   break;






  case 133:
  case 148:
  case 146:
  case 130:
  case 138:
  case 136:
  case 149:
  case 142:
  case 144:
  case 143:
  case 134:
  case 132:
  case 150:
  case 147:
  case 135:
  case 145:

   ReorderBufferProcessXid(ctx->reorder, XLogRecGetXid(record),
         buf.origptr);
   break;
  case 137:
   elog(ERROR, "unexpected RM_NEXT_ID rmgr_id: %u", (RmgrIds) XLogRecGetRmid(buf.record));
 }
}
