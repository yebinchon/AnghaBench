
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int TransactionId ;
struct TYPE_15__ {scalar_t__ t_tableOid; int t_self; TYPE_1__* t_data; } ;
struct TYPE_14__ {int t_infomask; int t_ctid; } ;
typedef int TM_Result ;
typedef TYPE_1__* HeapTupleHeader ;
typedef TYPE_2__* HeapTuple ;
typedef scalar_t__ CommandId ;
typedef int Buffer ;


 int Assert (int) ;
 scalar_t__ HEAP_LOCKED_UPGRADED (int) ;
 int HEAP_MOVED_IN ;
 int HEAP_MOVED_OFF ;
 int HEAP_XMAX_COMMITTED ;
 int HEAP_XMAX_INVALID ;
 scalar_t__ HEAP_XMAX_IS_LOCKED_ONLY (int) ;
 int HEAP_XMAX_IS_MULTI ;
 int HEAP_XMIN_COMMITTED ;
 int HEAP_XMIN_INVALID ;
 int HeapTupleGetUpdateXid (TYPE_1__*) ;
 scalar_t__ HeapTupleHeaderGetCmax (TYPE_1__*) ;
 scalar_t__ HeapTupleHeaderGetCmin (TYPE_1__*) ;
 int HeapTupleHeaderGetRawXmax (TYPE_1__*) ;
 int HeapTupleHeaderGetRawXmin (TYPE_1__*) ;
 int HeapTupleHeaderGetXvac (TYPE_1__*) ;
 scalar_t__ HeapTupleHeaderIndicatesMovedPartitions (TYPE_1__*) ;
 int HeapTupleHeaderXminCommitted (TYPE_1__*) ;
 scalar_t__ HeapTupleHeaderXminInvalid (TYPE_1__*) ;
 scalar_t__ InvalidOid ;
 int InvalidTransactionId ;
 int ItemPointerEquals (int *,int *) ;
 int ItemPointerIsValid (int *) ;
 scalar_t__ MultiXactIdIsRunning (int ,int) ;
 int SetHintBits (TYPE_1__*,int ,int,int ) ;
 int TM_BeingModified ;
 int TM_Deleted ;
 int TM_Invisible ;
 int TM_Ok ;
 int TM_SelfModified ;
 int TM_Updated ;
 scalar_t__ TransactionIdDidCommit (int ) ;
 scalar_t__ TransactionIdIsCurrentTransactionId (int ) ;
 scalar_t__ TransactionIdIsInProgress (int ) ;
 int TransactionIdIsValid (int ) ;

TM_Result
HeapTupleSatisfiesUpdate(HeapTuple htup, CommandId curcid,
       Buffer buffer)
{
 HeapTupleHeader tuple = htup->t_data;

 Assert(ItemPointerIsValid(&htup->t_self));
 Assert(htup->t_tableOid != InvalidOid);

 if (!HeapTupleHeaderXminCommitted(tuple))
 {
  if (HeapTupleHeaderXminInvalid(tuple))
   return TM_Invisible;


  if (tuple->t_infomask & HEAP_MOVED_OFF)
  {
   TransactionId xvac = HeapTupleHeaderGetXvac(tuple);

   if (TransactionIdIsCurrentTransactionId(xvac))
    return TM_Invisible;
   if (!TransactionIdIsInProgress(xvac))
   {
    if (TransactionIdDidCommit(xvac))
    {
     SetHintBits(tuple, buffer, HEAP_XMIN_INVALID,
        InvalidTransactionId);
     return TM_Invisible;
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
     return TM_Invisible;
    if (TransactionIdDidCommit(xvac))
     SetHintBits(tuple, buffer, HEAP_XMIN_COMMITTED,
        InvalidTransactionId);
    else
    {
     SetHintBits(tuple, buffer, HEAP_XMIN_INVALID,
        InvalidTransactionId);
     return TM_Invisible;
    }
   }
  }
  else if (TransactionIdIsCurrentTransactionId(HeapTupleHeaderGetRawXmin(tuple)))
  {
   if (HeapTupleHeaderGetCmin(tuple) >= curcid)
    return TM_Invisible;

   if (tuple->t_infomask & HEAP_XMAX_INVALID)
    return TM_Ok;

   if (HEAP_XMAX_IS_LOCKED_ONLY(tuple->t_infomask))
   {
    TransactionId xmax;

    xmax = HeapTupleHeaderGetRawXmax(tuple);
    if (tuple->t_infomask & HEAP_XMAX_IS_MULTI)
    {
     if (MultiXactIdIsRunning(xmax, 1))
      return TM_BeingModified;
     else
      return TM_Ok;
    }






    if (!TransactionIdIsInProgress(xmax))
     return TM_Ok;
    return TM_BeingModified;
   }

   if (tuple->t_infomask & HEAP_XMAX_IS_MULTI)
   {
    TransactionId xmax;

    xmax = HeapTupleGetUpdateXid(tuple);


    Assert(TransactionIdIsValid(xmax));


    if (!TransactionIdIsCurrentTransactionId(xmax))
    {
     if (MultiXactIdIsRunning(HeapTupleHeaderGetRawXmax(tuple),
            0))
      return TM_BeingModified;
     return TM_Ok;
    }
    else
    {
     if (HeapTupleHeaderGetCmax(tuple) >= curcid)
      return TM_SelfModified;
     else
      return TM_Invisible;
    }
   }

   if (!TransactionIdIsCurrentTransactionId(HeapTupleHeaderGetRawXmax(tuple)))
   {

    SetHintBits(tuple, buffer, HEAP_XMAX_INVALID,
       InvalidTransactionId);
    return TM_Ok;
   }

   if (HeapTupleHeaderGetCmax(tuple) >= curcid)
    return TM_SelfModified;
   else
    return TM_Invisible;
  }
  else if (TransactionIdIsInProgress(HeapTupleHeaderGetRawXmin(tuple)))
   return TM_Invisible;
  else if (TransactionIdDidCommit(HeapTupleHeaderGetRawXmin(tuple)))
   SetHintBits(tuple, buffer, HEAP_XMIN_COMMITTED,
      HeapTupleHeaderGetRawXmin(tuple));
  else
  {

   SetHintBits(tuple, buffer, HEAP_XMIN_INVALID,
      InvalidTransactionId);
   return TM_Invisible;
  }
 }



 if (tuple->t_infomask & HEAP_XMAX_INVALID)
  return TM_Ok;

 if (tuple->t_infomask & HEAP_XMAX_COMMITTED)
 {
  if (HEAP_XMAX_IS_LOCKED_ONLY(tuple->t_infomask))
   return TM_Ok;
  if (!ItemPointerEquals(&htup->t_self, &tuple->t_ctid) ||
   HeapTupleHeaderIndicatesMovedPartitions(tuple))
   return TM_Updated;
  else
   return TM_Deleted;
 }

 if (tuple->t_infomask & HEAP_XMAX_IS_MULTI)
 {
  TransactionId xmax;

  if (HEAP_LOCKED_UPGRADED(tuple->t_infomask))
   return TM_Ok;

  if (HEAP_XMAX_IS_LOCKED_ONLY(tuple->t_infomask))
  {
   if (MultiXactIdIsRunning(HeapTupleHeaderGetRawXmax(tuple), 1))
    return TM_BeingModified;

   SetHintBits(tuple, buffer, HEAP_XMAX_INVALID, InvalidTransactionId);
   return TM_Ok;
  }

  xmax = HeapTupleGetUpdateXid(tuple);
  if (!TransactionIdIsValid(xmax))
  {
   if (MultiXactIdIsRunning(HeapTupleHeaderGetRawXmax(tuple), 0))
    return TM_BeingModified;
  }


  Assert(TransactionIdIsValid(xmax));

  if (TransactionIdIsCurrentTransactionId(xmax))
  {
   if (HeapTupleHeaderGetCmax(tuple) >= curcid)
    return TM_SelfModified;
   else
    return TM_Invisible;
  }

  if (MultiXactIdIsRunning(HeapTupleHeaderGetRawXmax(tuple), 0))
   return TM_BeingModified;

  if (TransactionIdDidCommit(xmax))
  {
   if (!ItemPointerEquals(&htup->t_self, &tuple->t_ctid) ||
    HeapTupleHeaderIndicatesMovedPartitions(tuple))
    return TM_Updated;
   else
    return TM_Deleted;
  }






  if (!MultiXactIdIsRunning(HeapTupleHeaderGetRawXmax(tuple), 0))
  {




   SetHintBits(tuple, buffer, HEAP_XMAX_INVALID,
      InvalidTransactionId);
   return TM_Ok;
  }
  else
  {

   return TM_BeingModified;
  }
 }

 if (TransactionIdIsCurrentTransactionId(HeapTupleHeaderGetRawXmax(tuple)))
 {
  if (HEAP_XMAX_IS_LOCKED_ONLY(tuple->t_infomask))
   return TM_BeingModified;
  if (HeapTupleHeaderGetCmax(tuple) >= curcid)
   return TM_SelfModified;
  else
   return TM_Invisible;
 }

 if (TransactionIdIsInProgress(HeapTupleHeaderGetRawXmax(tuple)))
  return TM_BeingModified;

 if (!TransactionIdDidCommit(HeapTupleHeaderGetRawXmax(tuple)))
 {

  SetHintBits(tuple, buffer, HEAP_XMAX_INVALID,
     InvalidTransactionId);
  return TM_Ok;
 }



 if (HEAP_XMAX_IS_LOCKED_ONLY(tuple->t_infomask))
 {
  SetHintBits(tuple, buffer, HEAP_XMAX_INVALID,
     InvalidTransactionId);
  return TM_Ok;
 }

 SetHintBits(tuple, buffer, HEAP_XMAX_COMMITTED,
    HeapTupleHeaderGetRawXmax(tuple));
 if (!ItemPointerEquals(&htup->t_self, &tuple->t_ctid) ||
  HeapTupleHeaderIndicatesMovedPartitions(tuple))
  return TM_Updated;
 else
  return TM_Deleted;
}
