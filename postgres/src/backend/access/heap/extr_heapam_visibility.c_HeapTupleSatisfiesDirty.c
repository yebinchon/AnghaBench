
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef void* TransactionId ;
struct TYPE_17__ {scalar_t__ t_tableOid; int t_self; TYPE_2__* t_data; } ;
struct TYPE_16__ {int t_infomask; } ;
struct TYPE_15__ {void* xmax; void* xmin; int speculativeToken; } ;
typedef TYPE_1__* Snapshot ;
typedef TYPE_2__* HeapTupleHeader ;
typedef TYPE_3__* HeapTuple ;
typedef int Buffer ;


 int Assert (int) ;
 int HEAP_MOVED_IN ;
 int HEAP_MOVED_OFF ;
 int HEAP_XMAX_COMMITTED ;
 int HEAP_XMAX_INVALID ;
 scalar_t__ HEAP_XMAX_IS_LOCKED_ONLY (int) ;
 int HEAP_XMAX_IS_MULTI ;
 int HEAP_XMIN_COMMITTED ;
 int HEAP_XMIN_INVALID ;
 void* HeapTupleGetUpdateXid (TYPE_2__*) ;
 void* HeapTupleHeaderGetRawXmax (TYPE_2__*) ;
 void* HeapTupleHeaderGetRawXmin (TYPE_2__*) ;
 int HeapTupleHeaderGetSpeculativeToken (TYPE_2__*) ;
 void* HeapTupleHeaderGetXvac (TYPE_2__*) ;
 scalar_t__ HeapTupleHeaderIsSpeculative (TYPE_2__*) ;
 int HeapTupleHeaderXminCommitted (TYPE_2__*) ;
 scalar_t__ HeapTupleHeaderXminInvalid (TYPE_2__*) ;
 scalar_t__ InvalidOid ;
 void* InvalidTransactionId ;
 int ItemPointerIsValid (int *) ;
 int SetHintBits (TYPE_2__*,int ,int,void*) ;
 scalar_t__ TransactionIdDidCommit (void*) ;
 scalar_t__ TransactionIdIsCurrentTransactionId (void*) ;
 scalar_t__ TransactionIdIsInProgress (void*) ;
 int TransactionIdIsValid (void*) ;

__attribute__((used)) static bool
HeapTupleSatisfiesDirty(HeapTuple htup, Snapshot snapshot,
      Buffer buffer)
{
 HeapTupleHeader tuple = htup->t_data;

 Assert(ItemPointerIsValid(&htup->t_self));
 Assert(htup->t_tableOid != InvalidOid);

 snapshot->xmin = snapshot->xmax = InvalidTransactionId;
 snapshot->speculativeToken = 0;

 if (!HeapTupleHeaderXminCommitted(tuple))
 {
  if (HeapTupleHeaderXminInvalid(tuple))
   return 0;


  if (tuple->t_infomask & HEAP_MOVED_OFF)
  {
   TransactionId xvac = HeapTupleHeaderGetXvac(tuple);

   if (TransactionIdIsCurrentTransactionId(xvac))
    return 0;
   if (!TransactionIdIsInProgress(xvac))
   {
    if (TransactionIdDidCommit(xvac))
    {
     SetHintBits(tuple, buffer, HEAP_XMIN_INVALID,
        InvalidTransactionId);
     return 0;
    }
    SetHintBits(tuple, buffer, HEAP_XMIN_COMMITTED,
       InvalidTransactionId);
   }
  }

  else if (tuple->t_infomask & HEAP_MOVED_IN)
  {
   TransactionId xvac = HeapTupleHeaderGetXvac(tuple);

   if (!TransactionIdIsCurrentTransactionId(xvac))
   {
    if (TransactionIdIsInProgress(xvac))
     return 0;
    if (TransactionIdDidCommit(xvac))
     SetHintBits(tuple, buffer, HEAP_XMIN_COMMITTED,
        InvalidTransactionId);
    else
    {
     SetHintBits(tuple, buffer, HEAP_XMIN_INVALID,
        InvalidTransactionId);
     return 0;
    }
   }
  }
  else if (TransactionIdIsCurrentTransactionId(HeapTupleHeaderGetRawXmin(tuple)))
  {
   if (tuple->t_infomask & HEAP_XMAX_INVALID)
    return 1;

   if (HEAP_XMAX_IS_LOCKED_ONLY(tuple->t_infomask))
    return 1;

   if (tuple->t_infomask & HEAP_XMAX_IS_MULTI)
   {
    TransactionId xmax;

    xmax = HeapTupleGetUpdateXid(tuple);


    Assert(TransactionIdIsValid(xmax));


    if (!TransactionIdIsCurrentTransactionId(xmax))
     return 1;
    else
     return 0;
   }

   if (!TransactionIdIsCurrentTransactionId(HeapTupleHeaderGetRawXmax(tuple)))
   {

    SetHintBits(tuple, buffer, HEAP_XMAX_INVALID,
       InvalidTransactionId);
    return 1;
   }

   return 0;
  }
  else if (TransactionIdIsInProgress(HeapTupleHeaderGetRawXmin(tuple)))
  {






   if (HeapTupleHeaderIsSpeculative(tuple))
   {
    snapshot->speculativeToken =
     HeapTupleHeaderGetSpeculativeToken(tuple);

    Assert(snapshot->speculativeToken != 0);
   }

   snapshot->xmin = HeapTupleHeaderGetRawXmin(tuple);

   return 1;
  }
  else if (TransactionIdDidCommit(HeapTupleHeaderGetRawXmin(tuple)))
   SetHintBits(tuple, buffer, HEAP_XMIN_COMMITTED,
      HeapTupleHeaderGetRawXmin(tuple));
  else
  {

   SetHintBits(tuple, buffer, HEAP_XMIN_INVALID,
      InvalidTransactionId);
   return 0;
  }
 }



 if (tuple->t_infomask & HEAP_XMAX_INVALID)
  return 1;

 if (tuple->t_infomask & HEAP_XMAX_COMMITTED)
 {
  if (HEAP_XMAX_IS_LOCKED_ONLY(tuple->t_infomask))
   return 1;
  return 0;
 }

 if (tuple->t_infomask & HEAP_XMAX_IS_MULTI)
 {
  TransactionId xmax;

  if (HEAP_XMAX_IS_LOCKED_ONLY(tuple->t_infomask))
   return 1;

  xmax = HeapTupleGetUpdateXid(tuple);


  Assert(TransactionIdIsValid(xmax));

  if (TransactionIdIsCurrentTransactionId(xmax))
   return 0;
  if (TransactionIdIsInProgress(xmax))
  {
   snapshot->xmax = xmax;
   return 1;
  }
  if (TransactionIdDidCommit(xmax))
   return 0;

  return 1;
 }

 if (TransactionIdIsCurrentTransactionId(HeapTupleHeaderGetRawXmax(tuple)))
 {
  if (HEAP_XMAX_IS_LOCKED_ONLY(tuple->t_infomask))
   return 1;
  return 0;
 }

 if (TransactionIdIsInProgress(HeapTupleHeaderGetRawXmax(tuple)))
 {
  if (!HEAP_XMAX_IS_LOCKED_ONLY(tuple->t_infomask))
   snapshot->xmax = HeapTupleHeaderGetRawXmax(tuple);
  return 1;
 }

 if (!TransactionIdDidCommit(HeapTupleHeaderGetRawXmax(tuple)))
 {

  SetHintBits(tuple, buffer, HEAP_XMAX_INVALID,
     InvalidTransactionId);
  return 1;
 }



 if (HEAP_XMAX_IS_LOCKED_ONLY(tuple->t_infomask))
 {
  SetHintBits(tuple, buffer, HEAP_XMAX_INVALID,
     InvalidTransactionId);
  return 1;
 }

 SetHintBits(tuple, buffer, HEAP_XMAX_COMMITTED,
    HeapTupleHeaderGetRawXmax(tuple));
 return 0;
}
