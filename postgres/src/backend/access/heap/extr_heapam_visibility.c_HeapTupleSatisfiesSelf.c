
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int TransactionId ;
struct TYPE_12__ {scalar_t__ t_tableOid; int t_self; TYPE_1__* t_data; } ;
struct TYPE_11__ {int t_infomask; } ;
typedef int Snapshot ;
typedef TYPE_1__* HeapTupleHeader ;
typedef TYPE_2__* HeapTuple ;
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
 int HeapTupleGetUpdateXid (TYPE_1__*) ;
 int HeapTupleHeaderGetRawXmax (TYPE_1__*) ;
 int HeapTupleHeaderGetRawXmin (TYPE_1__*) ;
 int HeapTupleHeaderGetXvac (TYPE_1__*) ;
 int HeapTupleHeaderXminCommitted (TYPE_1__*) ;
 scalar_t__ HeapTupleHeaderXminInvalid (TYPE_1__*) ;
 scalar_t__ InvalidOid ;
 int InvalidTransactionId ;
 int ItemPointerIsValid (int *) ;
 int SetHintBits (TYPE_1__*,int ,int,int ) ;
 scalar_t__ TransactionIdDidCommit (int ) ;
 scalar_t__ TransactionIdIsCurrentTransactionId (int ) ;
 scalar_t__ TransactionIdIsInProgress (int ) ;
 int TransactionIdIsValid (int ) ;

__attribute__((used)) static bool
HeapTupleSatisfiesSelf(HeapTuple htup, Snapshot snapshot, Buffer buffer)
{
 HeapTupleHeader tuple = htup->t_data;

 Assert(ItemPointerIsValid(&htup->t_self));
 Assert(htup->t_tableOid != InvalidOid);

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
   return 0;
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
   return 1;
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
  return 1;

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
