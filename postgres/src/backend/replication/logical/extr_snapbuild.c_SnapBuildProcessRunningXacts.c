
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_10__ ;


struct TYPE_14__ {scalar_t__ oldestRunningXid; } ;
typedef TYPE_1__ xl_running_xacts ;
typedef int XLogRecPtr ;
typedef scalar_t__ TransactionId ;
struct TYPE_16__ {scalar_t__ restart_decoding_lsn; } ;
struct TYPE_15__ {scalar_t__ state; scalar_t__ xmin; scalar_t__ last_serialized_snapshot; TYPE_10__* reorder; int xmax; } ;
struct TYPE_13__ {scalar_t__ current_restart_decoding_lsn; } ;
typedef TYPE_2__ SnapBuild ;
typedef TYPE_3__ ReorderBufferTXN ;


 int DEBUG3 ;
 scalar_t__ InvalidTransactionId ;
 scalar_t__ InvalidXLogRecPtr ;
 int LogicalIncreaseRestartDecodingForSlot (int ,scalar_t__) ;
 int LogicalIncreaseXminForSlot (int ,scalar_t__) ;
 TYPE_3__* ReorderBufferGetOldestTXN (TYPE_10__*) ;
 scalar_t__ ReorderBufferGetOldestXmin (TYPE_10__*) ;
 scalar_t__ SNAPBUILD_CONSISTENT ;
 int SnapBuildFindSnapshot (TYPE_2__*,int ,TYPE_1__*) ;
 int SnapBuildPurgeCommittedTxn (TYPE_2__*) ;
 int SnapBuildSerialize (TYPE_2__*,int ) ;
 int elog (int ,char*,scalar_t__,int ,scalar_t__,scalar_t__) ;

void
SnapBuildProcessRunningXacts(SnapBuild *builder, XLogRecPtr lsn, xl_running_xacts *running)
{
 ReorderBufferTXN *txn;
 TransactionId xmin;






 if (builder->state < SNAPBUILD_CONSISTENT)
 {

  if (!SnapBuildFindSnapshot(builder, lsn, running))
   return;
 }
 else
  SnapBuildSerialize(builder, lsn);
 builder->xmin = running->oldestRunningXid;


 SnapBuildPurgeCommittedTxn(builder);
 xmin = ReorderBufferGetOldestXmin(builder->reorder);
 if (xmin == InvalidTransactionId)
  xmin = running->oldestRunningXid;
 elog(DEBUG3, "xmin: %u, xmax: %u, oldest running: %u, oldest xmin: %u",
   builder->xmin, builder->xmax, running->oldestRunningXid, xmin);
 LogicalIncreaseXminForSlot(lsn, xmin);
 if (builder->state < SNAPBUILD_CONSISTENT)
  return;

 txn = ReorderBufferGetOldestTXN(builder->reorder);





 if (txn != ((void*)0) && txn->restart_decoding_lsn != InvalidXLogRecPtr)
  LogicalIncreaseRestartDecodingForSlot(lsn, txn->restart_decoding_lsn);





 else if (txn == ((void*)0) &&
    builder->reorder->current_restart_decoding_lsn != InvalidXLogRecPtr &&
    builder->last_serialized_snapshot != InvalidXLogRecPtr)
  LogicalIncreaseRestartDecodingForSlot(lsn,
             builder->last_serialized_snapshot);
}
