
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* TransactionState ;
typedef scalar_t__ TransactionId ;
struct TYPE_3__ {scalar_t__ state; int nChildXids; scalar_t__* childXids; int fullTransactionId; struct TYPE_3__* parent; } ;


 TYPE_1__* CurrentTransactionState ;
 int FullTransactionIdIsValid (int ) ;
 scalar_t__ GetTopTransactionIdIfAny () ;
 scalar_t__* ParallelCurrentXids ;
 scalar_t__ TRANS_ABORT ;
 scalar_t__ TransactionIdEquals (scalar_t__,scalar_t__) ;
 int TransactionIdIsNormal (scalar_t__) ;
 scalar_t__ TransactionIdPrecedes (scalar_t__,scalar_t__) ;
 scalar_t__ XidFromFullTransactionId (int ) ;
 int nParallelCurrentXids ;

bool
TransactionIdIsCurrentTransactionId(TransactionId xid)
{
 TransactionState s;
 if (!TransactionIdIsNormal(xid))
  return 0;

 if (TransactionIdEquals(xid, GetTopTransactionIdIfAny()))
  return 1;







 if (nParallelCurrentXids > 0)
 {
  int low,
     high;

  low = 0;
  high = nParallelCurrentXids - 1;
  while (low <= high)
  {
   int middle;
   TransactionId probe;

   middle = low + (high - low) / 2;
   probe = ParallelCurrentXids[middle];
   if (probe == xid)
    return 1;
   else if (probe < xid)
    low = middle + 1;
   else
    high = middle - 1;
  }
  return 0;
 }
 for (s = CurrentTransactionState; s != ((void*)0); s = s->parent)
 {
  int low,
     high;

  if (s->state == TRANS_ABORT)
   continue;
  if (!FullTransactionIdIsValid(s->fullTransactionId))
   continue;
  if (TransactionIdEquals(xid, XidFromFullTransactionId(s->fullTransactionId)))
   return 1;

  low = 0;
  high = s->nChildXids - 1;
  while (low <= high)
  {
   int middle;
   TransactionId probe;

   middle = low + (high - low) / 2;
   probe = s->childXids[middle];
   if (TransactionIdEquals(probe, xid))
    return 1;
   else if (TransactionIdPrecedes(probe, xid))
    low = middle + 1;
   else
    high = middle - 1;
  }
 }

 return 0;
}
