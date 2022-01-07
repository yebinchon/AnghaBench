
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_16__ {int twophase_xid; } ;
typedef TYPE_1__ xl_xact_parsed_commit ;
struct TYPE_17__ {int twophase_xid; } ;
typedef TYPE_2__ xl_xact_parsed_abort ;
typedef int xl_xact_commit ;
struct TYPE_18__ {int nsubxacts; int xtop; int * xsub; } ;
typedef TYPE_3__ xl_xact_assignment ;
typedef int xl_xact_abort ;
typedef int uint8 ;
struct TYPE_19__ {int origptr; int * record; } ;
typedef TYPE_4__ XLogRecordBuffer ;
typedef int XLogReaderState ;
typedef int TransactionId ;
struct TYPE_20__ {int * reorder; int * snapshot_builder; } ;
typedef int SnapBuild ;
typedef int ReorderBuffer ;
typedef TYPE_5__ LogicalDecodingContext ;


 int DecodeAbort (TYPE_5__*,TYPE_4__*,TYPE_2__*,int ) ;
 int DecodeCommit (TYPE_5__*,TYPE_4__*,TYPE_1__*,int ) ;
 int ERROR ;
 int ParseAbortRecord (int,int *,TYPE_2__*) ;
 int ParseCommitRecord (int,int *,TYPE_1__*) ;
 int ReorderBufferAssignChild (int *,int ,int ,int ) ;
 int ReorderBufferProcessXid (int *,int ,int ) ;
 scalar_t__ SNAPBUILD_FULL_SNAPSHOT ;
 scalar_t__ SnapBuildCurrentState (int *) ;
 int TransactionIdIsValid (int ) ;





 int XLOG_XACT_OPMASK ;

 scalar_t__ XLogRecGetData (int *) ;
 int XLogRecGetInfo (int *) ;
 int XLogRecGetXid (int *) ;
 int elog (int ,char*,int) ;

__attribute__((used)) static void
DecodeXactOp(LogicalDecodingContext *ctx, XLogRecordBuffer *buf)
{
 SnapBuild *builder = ctx->snapshot_builder;
 ReorderBuffer *reorder = ctx->reorder;
 XLogReaderState *r = buf->record;
 uint8 info = XLogRecGetInfo(r) & XLOG_XACT_OPMASK;
 if (SnapBuildCurrentState(builder) < SNAPBUILD_FULL_SNAPSHOT &&
  info != 131)
  return;

 switch (info)
 {
  case 130:
  case 129:
   {
    xl_xact_commit *xlrec;
    xl_xact_parsed_commit parsed;
    TransactionId xid;

    xlrec = (xl_xact_commit *) XLogRecGetData(r);
    ParseCommitRecord(XLogRecGetInfo(buf->record), xlrec, &parsed);

    if (!TransactionIdIsValid(parsed.twophase_xid))
     xid = XLogRecGetXid(r);
    else
     xid = parsed.twophase_xid;

    DecodeCommit(ctx, buf, &parsed, xid);
    break;
   }
  case 133:
  case 132:
   {
    xl_xact_abort *xlrec;
    xl_xact_parsed_abort parsed;
    TransactionId xid;

    xlrec = (xl_xact_abort *) XLogRecGetData(r);
    ParseAbortRecord(XLogRecGetInfo(buf->record), xlrec, &parsed);

    if (!TransactionIdIsValid(parsed.twophase_xid))
     xid = XLogRecGetXid(r);
    else
     xid = parsed.twophase_xid;

    DecodeAbort(ctx, buf, &parsed, xid);
    break;
   }
  case 131:
   {
    xl_xact_assignment *xlrec;
    int i;
    TransactionId *sub_xid;

    xlrec = (xl_xact_assignment *) XLogRecGetData(r);

    sub_xid = &xlrec->xsub[0];

    for (i = 0; i < xlrec->nsubxacts; i++)
    {
     ReorderBufferAssignChild(reorder, xlrec->xtop,
            *(sub_xid++), buf->origptr);
    }
    break;
   }
  case 128:
   ReorderBufferProcessXid(reorder, XLogRecGetXid(r), buf->origptr);
   break;
  default:
   elog(ERROR, "unexpected RM_XACT_ID record type: %u", info);
 }
}
