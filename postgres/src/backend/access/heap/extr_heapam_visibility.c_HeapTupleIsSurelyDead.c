
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int TransactionId ;
struct TYPE_8__ {scalar_t__ t_tableOid; int t_self; TYPE_1__* t_data; } ;
struct TYPE_7__ {int t_infomask; } ;
typedef TYPE_1__* HeapTupleHeader ;
typedef TYPE_2__* HeapTuple ;


 int Assert (int) ;
 int HEAP_XMAX_COMMITTED ;
 int HEAP_XMAX_INVALID ;
 scalar_t__ HEAP_XMAX_IS_LOCKED_ONLY (int) ;
 int HEAP_XMAX_IS_MULTI ;
 int HeapTupleHeaderGetRawXmax (TYPE_1__*) ;
 int HeapTupleHeaderXminCommitted (TYPE_1__*) ;
 scalar_t__ HeapTupleHeaderXminInvalid (TYPE_1__*) ;
 scalar_t__ InvalidOid ;
 int ItemPointerIsValid (int *) ;
 int TransactionIdPrecedes (int ,int ) ;

bool
HeapTupleIsSurelyDead(HeapTuple htup, TransactionId OldestXmin)
{
 HeapTupleHeader tuple = htup->t_data;

 Assert(ItemPointerIsValid(&htup->t_self));
 Assert(htup->t_tableOid != InvalidOid);







 if (!HeapTupleHeaderXminCommitted(tuple))
  return HeapTupleHeaderXminInvalid(tuple) ? 1 : 0;





 if (tuple->t_infomask & HEAP_XMAX_INVALID)
  return 0;




 if (HEAP_XMAX_IS_LOCKED_ONLY(tuple->t_infomask))
  return 0;





 if (tuple->t_infomask & HEAP_XMAX_IS_MULTI)
  return 0;


 if (!(tuple->t_infomask & HEAP_XMAX_COMMITTED))
  return 0;


 return TransactionIdPrecedes(HeapTupleHeaderGetRawXmax(tuple), OldestXmin);
}
