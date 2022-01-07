
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ TransactionId ;
struct TYPE_8__ {int t_infomask; } ;
typedef TYPE_1__* HeapTupleHeader ;


 int HEAP_MOVED ;
 scalar_t__ HeapTupleHeaderGetUpdateXid (TYPE_1__*) ;
 scalar_t__ HeapTupleHeaderGetXmin (TYPE_1__*) ;
 scalar_t__ HeapTupleHeaderGetXvac (TYPE_1__*) ;
 scalar_t__ HeapTupleHeaderXminCommitted (TYPE_1__*) ;
 int HeapTupleHeaderXminInvalid (TYPE_1__*) ;
 scalar_t__ TransactionIdDidCommit (scalar_t__) ;
 scalar_t__ TransactionIdFollows (scalar_t__,scalar_t__) ;
 scalar_t__ TransactionIdPrecedes (scalar_t__,scalar_t__) ;

void
HeapTupleHeaderAdvanceLatestRemovedXid(HeapTupleHeader tuple,
            TransactionId *latestRemovedXid)
{
 TransactionId xmin = HeapTupleHeaderGetXmin(tuple);
 TransactionId xmax = HeapTupleHeaderGetUpdateXid(tuple);
 TransactionId xvac = HeapTupleHeaderGetXvac(tuple);

 if (tuple->t_infomask & HEAP_MOVED)
 {
  if (TransactionIdPrecedes(*latestRemovedXid, xvac))
   *latestRemovedXid = xvac;
 }
 if (HeapTupleHeaderXminCommitted(tuple) ||
  (!HeapTupleHeaderXminInvalid(tuple) && TransactionIdDidCommit(xmin)))
 {
  if (xmax != xmin &&
   TransactionIdFollows(xmax, *latestRemovedXid))
   *latestRemovedXid = xmax;
 }


}
