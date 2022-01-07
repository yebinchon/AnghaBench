
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ XLogRecPtr ;
typedef int TransactionId ;
struct TYPE_8__ {int includes_all_transactions; } ;
struct TYPE_9__ {scalar_t__ state; scalar_t__ start_decoding_at; scalar_t__ snapshot; int reorder; int xmax; TYPE_1__ committed; scalar_t__ building_full_snapshot; } ;
typedef TYPE_2__ SnapBuild ;


 int Assert (int) ;
 int DEBUG1 ;
 int DEBUG2 ;
 scalar_t__ NormalTransactionIdFollows (int ,int ) ;
 int ReorderBufferSetBaseSnapshot (int ,int ,scalar_t__,scalar_t__) ;
 int ReorderBufferXidHasBaseSnapshot (int ,int ) ;
 scalar_t__ ReorderBufferXidHasCatalogChanges (int ,int ) ;
 scalar_t__ SNAPBUILD_BUILDING_SNAPSHOT ;
 scalar_t__ SNAPBUILD_CONSISTENT ;
 scalar_t__ SNAPBUILD_FULL_SNAPSHOT ;
 scalar_t__ SNAPBUILD_START ;
 int SnapBuildAddCommittedTxn (TYPE_2__*,int ) ;
 scalar_t__ SnapBuildBuildSnapshot (TYPE_2__*) ;
 int SnapBuildDistributeNewCatalogSnapshot (TYPE_2__*,scalar_t__) ;
 int SnapBuildNextPhaseAt (TYPE_2__*) ;
 int SnapBuildSnapDecRefcount (scalar_t__) ;
 int SnapBuildSnapIncRefcount (scalar_t__) ;
 int TransactionIdAdvance (int ) ;
 scalar_t__ TransactionIdFollowsOrEquals (int ,int ) ;
 int TransactionIdIsValid (int ) ;
 scalar_t__ TransactionIdPrecedes (int ,int ) ;
 int elog (int ,char*,int ,...) ;

void
SnapBuildCommitTxn(SnapBuild *builder, XLogRecPtr lsn, TransactionId xid,
       int nsubxacts, TransactionId *subxacts)
{
 int nxact;

 bool needs_snapshot = 0;
 bool needs_timetravel = 0;
 bool sub_needs_timetravel = 0;

 TransactionId xmax = xid;





 if (builder->state == SNAPBUILD_START ||
  (builder->state == SNAPBUILD_BUILDING_SNAPSHOT &&
   TransactionIdPrecedes(xid, SnapBuildNextPhaseAt(builder))))
 {

  if (builder->start_decoding_at <= lsn)
   builder->start_decoding_at = lsn + 1;
  return;
 }

 if (builder->state < SNAPBUILD_CONSISTENT)
 {

  if (builder->start_decoding_at <= lsn)
   builder->start_decoding_at = lsn + 1;





  if (builder->building_full_snapshot)
  {
   needs_timetravel = 1;
  }
 }

 for (nxact = 0; nxact < nsubxacts; nxact++)
 {
  TransactionId subxid = subxacts[nxact];





  if (ReorderBufferXidHasCatalogChanges(builder->reorder, subxid))
  {
   sub_needs_timetravel = 1;
   needs_snapshot = 1;

   elog(DEBUG1, "found subtransaction %u:%u with catalog changes",
     xid, subxid);

   SnapBuildAddCommittedTxn(builder, subxid);

   if (NormalTransactionIdFollows(subxid, xmax))
    xmax = subxid;
  }







  else if (needs_timetravel)
  {
   SnapBuildAddCommittedTxn(builder, subxid);
   if (NormalTransactionIdFollows(subxid, xmax))
    xmax = subxid;
  }
 }


 if (ReorderBufferXidHasCatalogChanges(builder->reorder, xid))
 {
  elog(DEBUG2, "found top level transaction %u, with catalog changes",
    xid);
  needs_snapshot = 1;
  needs_timetravel = 1;
  SnapBuildAddCommittedTxn(builder, xid);
 }
 else if (sub_needs_timetravel)
 {

  SnapBuildAddCommittedTxn(builder, xid);
 }
 else if (needs_timetravel)
 {
  elog(DEBUG2, "forced transaction %u to do timetravel", xid);

  SnapBuildAddCommittedTxn(builder, xid);
 }

 if (!needs_timetravel)
 {

  builder->committed.includes_all_transactions = 0;
 }

 Assert(!needs_snapshot || needs_timetravel);






 if (needs_timetravel &&
  (!TransactionIdIsValid(builder->xmax) ||
   TransactionIdFollowsOrEquals(xmax, builder->xmax)))
 {
  builder->xmax = xmax;
  TransactionIdAdvance(builder->xmax);
 }


 if (needs_snapshot)
 {




  if (builder->state < SNAPBUILD_FULL_SNAPSHOT)
   return;






  if (builder->snapshot)
   SnapBuildSnapDecRefcount(builder->snapshot);

  builder->snapshot = SnapBuildBuildSnapshot(builder);


  if (!ReorderBufferXidHasBaseSnapshot(builder->reorder, xid))
  {
   SnapBuildSnapIncRefcount(builder->snapshot);
   ReorderBufferSetBaseSnapshot(builder->reorder, xid, lsn,
           builder->snapshot);
  }


  SnapBuildSnapIncRefcount(builder->snapshot);


  SnapBuildDistributeNewCatalogSnapshot(builder, lsn);
 }
}
