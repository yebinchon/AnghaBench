
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int TransactionId ;
struct TYPE_14__ {scalar_t__ t_tableOid; int t_self; TYPE_1__* t_data; } ;
struct TYPE_13__ {int t_infomask; } ;
typedef TYPE_1__* HeapTupleHeader ;
typedef TYPE_2__* HeapTuple ;
typedef int HTSV_Result ;
typedef int Buffer ;


 int Assert (int) ;
 int HEAPTUPLE_DEAD ;
 int HEAPTUPLE_DELETE_IN_PROGRESS ;
 int HEAPTUPLE_INSERT_IN_PROGRESS ;
 int HEAPTUPLE_LIVE ;
 int HEAPTUPLE_RECENTLY_DEAD ;
 int HEAP_LOCKED_UPGRADED (int) ;
 int HEAP_MOVED_IN ;
 int HEAP_MOVED_OFF ;
 int HEAP_XMAX_COMMITTED ;
 int HEAP_XMAX_INVALID ;
 scalar_t__ HEAP_XMAX_IS_LOCKED_ONLY (int) ;
 int HEAP_XMAX_IS_MULTI ;
 int HEAP_XMIN_COMMITTED ;
 int HEAP_XMIN_INVALID ;
 int HeapTupleGetUpdateXid (TYPE_1__*) ;
 int HeapTupleHeaderGetRawXmax (TYPE_1__*) ;
 int HeapTupleHeaderGetRawXmin (TYPE_1__*) ;
 int HeapTupleHeaderGetUpdateXid (TYPE_1__*) ;
 int HeapTupleHeaderGetXvac (TYPE_1__*) ;
 scalar_t__ HeapTupleHeaderIsOnlyLocked (TYPE_1__*) ;
 int HeapTupleHeaderXminCommitted (TYPE_1__*) ;
 scalar_t__ HeapTupleHeaderXminInvalid (TYPE_1__*) ;
 scalar_t__ InvalidOid ;
 int InvalidTransactionId ;
 int ItemPointerIsValid (int *) ;
 scalar_t__ MultiXactIdIsRunning (int ,int) ;
 int SetHintBits (TYPE_1__*,int ,int,int ) ;
 scalar_t__ TransactionIdDidCommit (int ) ;
 scalar_t__ TransactionIdIsCurrentTransactionId (int ) ;
 scalar_t__ TransactionIdIsInProgress (int ) ;
 int TransactionIdIsValid (int ) ;
 int TransactionIdPrecedes (int ,int ) ;

HTSV_Result
HeapTupleSatisfiesVacuum(HeapTuple htup, TransactionId OldestXmin,
       Buffer buffer)
{
 HeapTupleHeader tuple = htup->t_data;

 Assert(ItemPointerIsValid(&htup->t_self));
 Assert(htup->t_tableOid != InvalidOid);







 if (!HeapTupleHeaderXminCommitted(tuple))
 {
  if (HeapTupleHeaderXminInvalid(tuple))
   return HEAPTUPLE_DEAD;

  else if (tuple->t_infomask & HEAP_MOVED_OFF)
  {
   TransactionId xvac = HeapTupleHeaderGetXvac(tuple);

   if (TransactionIdIsCurrentTransactionId(xvac))
    return HEAPTUPLE_DELETE_IN_PROGRESS;
   if (TransactionIdIsInProgress(xvac))
    return HEAPTUPLE_DELETE_IN_PROGRESS;
   if (TransactionIdDidCommit(xvac))
   {
    SetHintBits(tuple, buffer, HEAP_XMIN_INVALID,
       InvalidTransactionId);
    return HEAPTUPLE_DEAD;
   }
   SetHintBits(tuple, buffer, HEAP_XMIN_COMMITTED,
      InvalidTransactionId);
  }

  else if (tuple->t_infomask & HEAP_MOVED_IN)
  {
   TransactionId xvac = HeapTupleHeaderGetXvac(tuple);

   if (TransactionIdIsCurrentTransactionId(xvac))
    return HEAPTUPLE_INSERT_IN_PROGRESS;
   if (TransactionIdIsInProgress(xvac))
    return HEAPTUPLE_INSERT_IN_PROGRESS;
   if (TransactionIdDidCommit(xvac))
    SetHintBits(tuple, buffer, HEAP_XMIN_COMMITTED,
       InvalidTransactionId);
   else
   {
    SetHintBits(tuple, buffer, HEAP_XMIN_INVALID,
       InvalidTransactionId);
    return HEAPTUPLE_DEAD;
   }
  }
  else if (TransactionIdIsCurrentTransactionId(HeapTupleHeaderGetRawXmin(tuple)))
  {
   if (tuple->t_infomask & HEAP_XMAX_INVALID)
    return HEAPTUPLE_INSERT_IN_PROGRESS;

   if (HEAP_XMAX_IS_LOCKED_ONLY(tuple->t_infomask) ||
    HeapTupleHeaderIsOnlyLocked(tuple))
    return HEAPTUPLE_INSERT_IN_PROGRESS;

   if (TransactionIdIsCurrentTransactionId(HeapTupleHeaderGetUpdateXid(tuple)))
    return HEAPTUPLE_DELETE_IN_PROGRESS;

   return HEAPTUPLE_INSERT_IN_PROGRESS;
  }
  else if (TransactionIdIsInProgress(HeapTupleHeaderGetRawXmin(tuple)))
  {
   return HEAPTUPLE_INSERT_IN_PROGRESS;
  }
  else if (TransactionIdDidCommit(HeapTupleHeaderGetRawXmin(tuple)))
   SetHintBits(tuple, buffer, HEAP_XMIN_COMMITTED,
      HeapTupleHeaderGetRawXmin(tuple));
  else
  {



   SetHintBits(tuple, buffer, HEAP_XMIN_INVALID,
      InvalidTransactionId);
   return HEAPTUPLE_DEAD;
  }






 }





 if (tuple->t_infomask & HEAP_XMAX_INVALID)
  return HEAPTUPLE_LIVE;

 if (HEAP_XMAX_IS_LOCKED_ONLY(tuple->t_infomask))
 {






  if (!(tuple->t_infomask & HEAP_XMAX_COMMITTED))
  {
   if (tuple->t_infomask & HEAP_XMAX_IS_MULTI)
   {




    if (!HEAP_LOCKED_UPGRADED(tuple->t_infomask) &&
     MultiXactIdIsRunning(HeapTupleHeaderGetRawXmax(tuple),
           1))
     return HEAPTUPLE_LIVE;
    SetHintBits(tuple, buffer, HEAP_XMAX_INVALID, InvalidTransactionId);
   }
   else
   {
    if (TransactionIdIsInProgress(HeapTupleHeaderGetRawXmax(tuple)))
     return HEAPTUPLE_LIVE;
    SetHintBits(tuple, buffer, HEAP_XMAX_INVALID,
       InvalidTransactionId);
   }
  }







  return HEAPTUPLE_LIVE;
 }

 if (tuple->t_infomask & HEAP_XMAX_IS_MULTI)
 {
  TransactionId xmax = HeapTupleGetUpdateXid(tuple);


  Assert(!HEAP_XMAX_IS_LOCKED_ONLY(tuple->t_infomask));


  Assert(TransactionIdIsValid(xmax));

  if (TransactionIdIsInProgress(xmax))
   return HEAPTUPLE_DELETE_IN_PROGRESS;
  else if (TransactionIdDidCommit(xmax))
  {
   if (!TransactionIdPrecedes(xmax, OldestXmin))
    return HEAPTUPLE_RECENTLY_DEAD;

   return HEAPTUPLE_DEAD;
  }
  else if (!MultiXactIdIsRunning(HeapTupleHeaderGetRawXmax(tuple), 0))
  {




   SetHintBits(tuple, buffer, HEAP_XMAX_INVALID, InvalidTransactionId);
  }

  return HEAPTUPLE_LIVE;
 }

 if (!(tuple->t_infomask & HEAP_XMAX_COMMITTED))
 {
  if (TransactionIdIsInProgress(HeapTupleHeaderGetRawXmax(tuple)))
   return HEAPTUPLE_DELETE_IN_PROGRESS;
  else if (TransactionIdDidCommit(HeapTupleHeaderGetRawXmax(tuple)))
   SetHintBits(tuple, buffer, HEAP_XMAX_COMMITTED,
      HeapTupleHeaderGetRawXmax(tuple));
  else
  {



   SetHintBits(tuple, buffer, HEAP_XMAX_INVALID,
      InvalidTransactionId);
   return HEAPTUPLE_LIVE;
  }






 }





 if (!TransactionIdPrecedes(HeapTupleHeaderGetRawXmax(tuple), OldestXmin))
  return HEAPTUPLE_RECENTLY_DEAD;


 return HEAPTUPLE_DEAD;
}
