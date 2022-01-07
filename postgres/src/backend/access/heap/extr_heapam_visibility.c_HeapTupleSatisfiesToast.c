
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int TransactionId ;
struct TYPE_10__ {scalar_t__ t_tableOid; int t_self; TYPE_1__* t_data; } ;
struct TYPE_9__ {int t_infomask; } ;
typedef int Snapshot ;
typedef TYPE_1__* HeapTupleHeader ;
typedef TYPE_2__* HeapTuple ;
typedef int Buffer ;


 int Assert (int) ;
 int HEAP_MOVED_IN ;
 int HEAP_MOVED_OFF ;
 int HEAP_XMIN_COMMITTED ;
 int HEAP_XMIN_INVALID ;
 int HeapTupleHeaderGetXmin (TYPE_1__*) ;
 int HeapTupleHeaderGetXvac (TYPE_1__*) ;
 int HeapTupleHeaderXminCommitted (TYPE_1__*) ;
 scalar_t__ HeapTupleHeaderXminInvalid (TYPE_1__*) ;
 scalar_t__ InvalidOid ;
 int InvalidTransactionId ;
 int ItemPointerIsValid (int *) ;
 int SetHintBits (TYPE_1__*,int ,int ,int ) ;
 scalar_t__ TransactionIdDidCommit (int ) ;
 scalar_t__ TransactionIdIsCurrentTransactionId (int ) ;
 scalar_t__ TransactionIdIsInProgress (int ) ;
 int TransactionIdIsValid (int ) ;

__attribute__((used)) static bool
HeapTupleSatisfiesToast(HeapTuple htup, Snapshot snapshot,
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






  else if (!TransactionIdIsValid(HeapTupleHeaderGetXmin(tuple)))
   return 0;
 }


 return 1;
}
