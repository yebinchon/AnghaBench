
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef void* TransactionId ;
struct TYPE_6__ {int t_infomask; } ;
typedef void* MultiXactId ;
typedef TYPE_1__* HeapTupleHeader ;


 int HEAP_MOVED ;
 int HEAP_XMAX_IS_MULTI ;
 void* HeapTupleHeaderGetRawXmax (TYPE_1__*) ;
 void* HeapTupleHeaderGetXmin (TYPE_1__*) ;
 void* HeapTupleHeaderGetXvac (TYPE_1__*) ;
 scalar_t__ MultiXactIdIsValid (void*) ;
 scalar_t__ TransactionIdIsNormal (void*) ;

bool
heap_tuple_needs_eventual_freeze(HeapTupleHeader tuple)
{
 TransactionId xid;





 xid = HeapTupleHeaderGetXmin(tuple);
 if (TransactionIdIsNormal(xid))
  return 1;




 if (tuple->t_infomask & HEAP_XMAX_IS_MULTI)
 {
  MultiXactId multi;

  multi = HeapTupleHeaderGetRawXmax(tuple);
  if (MultiXactIdIsValid(multi))
   return 1;
 }
 else
 {
  xid = HeapTupleHeaderGetRawXmax(tuple);
  if (TransactionIdIsNormal(xid))
   return 1;
 }

 if (tuple->t_infomask & HEAP_MOVED)
 {
  xid = HeapTupleHeaderGetXvac(tuple);
  if (TransactionIdIsNormal(xid))
   return 1;
 }

 return 0;
}
