
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int TransactionId ;
struct TYPE_5__ {int t_infomask; } ;
typedef TYPE_1__* HeapTupleHeader ;


 int Assert (int ) ;
 int HEAP_XMAX_INVALID ;
 int HEAP_XMAX_IS_MULTI ;
 int HEAP_XMAX_LOCK_ONLY ;
 int HeapTupleGetUpdateXid (TYPE_1__*) ;
 int HeapTupleHeaderGetRawXmax (TYPE_1__*) ;
 scalar_t__ TransactionIdDidCommit (int ) ;
 scalar_t__ TransactionIdIsCurrentTransactionId (int ) ;
 scalar_t__ TransactionIdIsInProgress (int ) ;
 int TransactionIdIsValid (int ) ;

bool
HeapTupleHeaderIsOnlyLocked(HeapTupleHeader tuple)
{
 TransactionId xmax;


 if (tuple->t_infomask & HEAP_XMAX_INVALID)
  return 1;

 if (tuple->t_infomask & HEAP_XMAX_LOCK_ONLY)
  return 1;


 if (!TransactionIdIsValid(HeapTupleHeaderGetRawXmax(tuple)))
  return 1;





 if (!(tuple->t_infomask & HEAP_XMAX_IS_MULTI))
  return 0;


 xmax = HeapTupleGetUpdateXid(tuple);


 Assert(TransactionIdIsValid(xmax));

 if (TransactionIdIsCurrentTransactionId(xmax))
  return 0;
 if (TransactionIdIsInProgress(xmax))
  return 0;
 if (TransactionIdDidCommit(xmax))
  return 0;





 return 1;
}
