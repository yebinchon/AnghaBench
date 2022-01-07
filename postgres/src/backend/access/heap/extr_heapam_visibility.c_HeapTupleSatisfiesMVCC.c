
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int TransactionId ;
struct TYPE_19__ {scalar_t__ t_tableOid; int t_self; TYPE_2__* t_data; } ;
struct TYPE_18__ {int t_infomask; } ;
struct TYPE_17__ {scalar_t__ curcid; } ;
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
 int HeapTupleGetUpdateXid (TYPE_2__*) ;
 scalar_t__ HeapTupleHeaderGetCmax (TYPE_2__*) ;
 scalar_t__ HeapTupleHeaderGetCmin (TYPE_2__*) ;
 int HeapTupleHeaderGetRawXmax (TYPE_2__*) ;
 int HeapTupleHeaderGetRawXmin (TYPE_2__*) ;
 int HeapTupleHeaderGetXvac (TYPE_2__*) ;
 int HeapTupleHeaderXminCommitted (TYPE_2__*) ;
 int HeapTupleHeaderXminFrozen (TYPE_2__*) ;
 scalar_t__ HeapTupleHeaderXminInvalid (TYPE_2__*) ;
 scalar_t__ InvalidOid ;
 int InvalidTransactionId ;
 int ItemPointerIsValid (int *) ;
 int SetHintBits (TYPE_2__*,int ,int,int ) ;
 scalar_t__ TransactionIdDidCommit (int ) ;
 scalar_t__ TransactionIdIsCurrentTransactionId (int ) ;
 int TransactionIdIsValid (int ) ;
 scalar_t__ XidInMVCCSnapshot (int ,TYPE_1__*) ;

__attribute__((used)) static bool
HeapTupleSatisfiesMVCC(HeapTuple htup, Snapshot snapshot,
        Buffer buffer)
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
   if (!XidInMVCCSnapshot(xvac, snapshot))
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
    if (XidInMVCCSnapshot(xvac, snapshot))
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
   if (HeapTupleHeaderGetCmin(tuple) >= snapshot->curcid)
    return 0;

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
    else if (HeapTupleHeaderGetCmax(tuple) >= snapshot->curcid)
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

   if (HeapTupleHeaderGetCmax(tuple) >= snapshot->curcid)
    return 1;
   else
    return 0;
  }
  else if (XidInMVCCSnapshot(HeapTupleHeaderGetRawXmin(tuple), snapshot))
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
 else
 {

  if (!HeapTupleHeaderXminFrozen(tuple) &&
   XidInMVCCSnapshot(HeapTupleHeaderGetRawXmin(tuple), snapshot))
   return 0;
 }



 if (tuple->t_infomask & HEAP_XMAX_INVALID)
  return 1;

 if (HEAP_XMAX_IS_LOCKED_ONLY(tuple->t_infomask))
  return 1;

 if (tuple->t_infomask & HEAP_XMAX_IS_MULTI)
 {
  TransactionId xmax;


  Assert(!HEAP_XMAX_IS_LOCKED_ONLY(tuple->t_infomask));

  xmax = HeapTupleGetUpdateXid(tuple);


  Assert(TransactionIdIsValid(xmax));

  if (TransactionIdIsCurrentTransactionId(xmax))
  {
   if (HeapTupleHeaderGetCmax(tuple) >= snapshot->curcid)
    return 1;
   else
    return 0;
  }
  if (XidInMVCCSnapshot(xmax, snapshot))
   return 1;
  if (TransactionIdDidCommit(xmax))
   return 0;

  return 1;
 }

 if (!(tuple->t_infomask & HEAP_XMAX_COMMITTED))
 {
  if (TransactionIdIsCurrentTransactionId(HeapTupleHeaderGetRawXmax(tuple)))
  {
   if (HeapTupleHeaderGetCmax(tuple) >= snapshot->curcid)
    return 1;
   else
    return 0;
  }

  if (XidInMVCCSnapshot(HeapTupleHeaderGetRawXmax(tuple), snapshot))
   return 1;

  if (!TransactionIdDidCommit(HeapTupleHeaderGetRawXmax(tuple)))
  {

   SetHintBits(tuple, buffer, HEAP_XMAX_INVALID,
      InvalidTransactionId);
   return 1;
  }


  SetHintBits(tuple, buffer, HEAP_XMAX_COMMITTED,
     HeapTupleHeaderGetRawXmax(tuple));
 }
 else
 {

  if (XidInMVCCSnapshot(HeapTupleHeaderGetRawXmax(tuple), snapshot))
   return 1;
 }



 return 0;
}
