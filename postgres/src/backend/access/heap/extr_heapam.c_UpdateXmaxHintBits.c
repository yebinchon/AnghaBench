
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int TransactionId ;
struct TYPE_5__ {int t_infomask; } ;
typedef TYPE_1__* HeapTupleHeader ;
typedef int Buffer ;


 int Assert (int) ;
 int HEAP_XMAX_COMMITTED ;
 int HEAP_XMAX_INVALID ;
 int HEAP_XMAX_IS_LOCKED_ONLY (int) ;
 int HEAP_XMAX_IS_MULTI ;
 int HeapTupleHeaderGetRawXmax (TYPE_1__*) ;
 int HeapTupleSetHintBits (TYPE_1__*,int ,int,int ) ;
 int InvalidTransactionId ;
 scalar_t__ TransactionIdDidCommit (int ) ;
 int TransactionIdEquals (int ,int ) ;

__attribute__((used)) static void
UpdateXmaxHintBits(HeapTupleHeader tuple, Buffer buffer, TransactionId xid)
{
 Assert(TransactionIdEquals(HeapTupleHeaderGetRawXmax(tuple), xid));
 Assert(!(tuple->t_infomask & HEAP_XMAX_IS_MULTI));

 if (!(tuple->t_infomask & (HEAP_XMAX_COMMITTED | HEAP_XMAX_INVALID)))
 {
  if (!HEAP_XMAX_IS_LOCKED_ONLY(tuple->t_infomask) &&
   TransactionIdDidCommit(xid))
   HeapTupleSetHintBits(tuple, buffer, HEAP_XMAX_COMMITTED,
         xid);
  else
   HeapTupleSetHintBits(tuple, buffer, HEAP_XMAX_INVALID,
         InvalidTransactionId);
 }
}
