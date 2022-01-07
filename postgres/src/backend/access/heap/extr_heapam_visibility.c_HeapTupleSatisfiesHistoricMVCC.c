
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int TransactionId ;
struct TYPE_16__ {scalar_t__ t_tableOid; int t_self; TYPE_2__* t_data; } ;
struct TYPE_15__ {int t_infomask; } ;
struct TYPE_14__ {scalar_t__ curcid; int xcnt; int xip; int xmax; int xmin; int subxcnt; int subxip; } ;
typedef TYPE_1__* Snapshot ;
typedef TYPE_2__* HeapTupleHeader ;
typedef TYPE_3__* HeapTuple ;
typedef scalar_t__ CommandId ;
typedef int Buffer ;


 int Assert (int) ;
 int ERROR ;
 int HEAP_XMAX_COMMITTED ;
 int HEAP_XMAX_INVALID ;
 scalar_t__ HEAP_XMAX_IS_LOCKED_ONLY (int) ;
 int HEAP_XMAX_IS_MULTI ;
 int HeapTupleGetUpdateXid (TYPE_2__*) ;
 scalar_t__ HeapTupleHeaderGetRawCommandId (TYPE_2__*) ;
 int HeapTupleHeaderGetRawXmax (TYPE_2__*) ;
 int HeapTupleHeaderGetXmin (TYPE_2__*) ;
 scalar_t__ HeapTupleHeaderXminCommitted (TYPE_2__*) ;
 scalar_t__ HeapTupleHeaderXminInvalid (TYPE_2__*) ;
 int HistoricSnapshotGetTupleCids () ;
 scalar_t__ InvalidCommandId ;
 scalar_t__ InvalidOid ;
 int ItemPointerIsValid (int *) ;
 int ResolveCminCmaxDuringDecoding (int ,TYPE_1__*,TYPE_3__*,int ,scalar_t__*,scalar_t__*) ;
 int TransactionIdDidCommit (int ) ;
 scalar_t__ TransactionIdFollowsOrEquals (int ,int ) ;
 scalar_t__ TransactionIdInArray (int ,int ,int ) ;
 scalar_t__ TransactionIdPrecedes (int ,int ) ;
 int elog (int ,char*) ;

__attribute__((used)) static bool
HeapTupleSatisfiesHistoricMVCC(HeapTuple htup, Snapshot snapshot,
          Buffer buffer)
{
 HeapTupleHeader tuple = htup->t_data;
 TransactionId xmin = HeapTupleHeaderGetXmin(tuple);
 TransactionId xmax = HeapTupleHeaderGetRawXmax(tuple);

 Assert(ItemPointerIsValid(&htup->t_self));
 Assert(htup->t_tableOid != InvalidOid);


 if (HeapTupleHeaderXminInvalid(tuple))
 {
  Assert(!TransactionIdDidCommit(xmin));
  return 0;
 }

 else if (TransactionIdInArray(xmin, snapshot->subxip, snapshot->subxcnt))
 {
  bool resolved;
  CommandId cmin = HeapTupleHeaderGetRawCommandId(tuple);
  CommandId cmax = InvalidCommandId;






  resolved = ResolveCminCmaxDuringDecoding(HistoricSnapshotGetTupleCids(), snapshot,
             htup, buffer,
             &cmin, &cmax);

  if (!resolved)
   elog(ERROR, "could not resolve cmin/cmax of catalog tuple");

  Assert(cmin != InvalidCommandId);

  if (cmin >= snapshot->curcid)
   return 0;

 }

 else if (TransactionIdPrecedes(xmin, snapshot->xmin))
 {
  Assert(!(HeapTupleHeaderXminCommitted(tuple) &&
     !TransactionIdDidCommit(xmin)));


  if (!HeapTupleHeaderXminCommitted(tuple) &&
   !TransactionIdDidCommit(xmin))
   return 0;

 }

 else if (TransactionIdFollowsOrEquals(xmin, snapshot->xmax))
 {
  return 0;
 }

 else if (TransactionIdInArray(xmin, snapshot->xip, snapshot->xcnt))
 {

 }





 else
 {
  return 0;
 }




 if (tuple->t_infomask & HEAP_XMAX_INVALID)
  return 1;

 else if (HEAP_XMAX_IS_LOCKED_ONLY(tuple->t_infomask))
  return 1;





 else if (tuple->t_infomask & HEAP_XMAX_IS_MULTI)
 {
  xmax = HeapTupleGetUpdateXid(tuple);
 }


 if (TransactionIdInArray(xmax, snapshot->subxip, snapshot->subxcnt))
 {
  bool resolved;
  CommandId cmin;
  CommandId cmax = HeapTupleHeaderGetRawCommandId(tuple);


  resolved = ResolveCminCmaxDuringDecoding(HistoricSnapshotGetTupleCids(), snapshot,
             htup, buffer,
             &cmin, &cmax);

  if (!resolved)
   elog(ERROR, "could not resolve combocid to cmax");

  Assert(cmax != InvalidCommandId);

  if (cmax >= snapshot->curcid)
   return 1;
  else
   return 0;
 }

 else if (TransactionIdPrecedes(xmax, snapshot->xmin))
 {
  Assert(!(tuple->t_infomask & HEAP_XMAX_COMMITTED &&
     !TransactionIdDidCommit(xmax)));


  if (tuple->t_infomask & HEAP_XMAX_COMMITTED)
   return 0;


  return !TransactionIdDidCommit(xmax);
 }

 else if (TransactionIdFollowsOrEquals(xmax, snapshot->xmax))
  return 1;

 else if (TransactionIdInArray(xmax, snapshot->xip, snapshot->xcnt))
  return 0;

 else
  return 1;
}
