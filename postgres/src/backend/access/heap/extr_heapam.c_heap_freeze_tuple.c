
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xl_heap_freeze_tuple ;
typedef int TransactionId ;
typedef int HeapTupleHeader ;


 int heap_execute_freeze_tuple (int ,int *) ;
 int heap_prepare_freeze_tuple (int ,int ,int ,int ,int ,int *,int*) ;

bool
heap_freeze_tuple(HeapTupleHeader tuple,
      TransactionId relfrozenxid, TransactionId relminmxid,
      TransactionId cutoff_xid, TransactionId cutoff_multi)
{
 xl_heap_freeze_tuple frz;
 bool do_freeze;
 bool tuple_totally_frozen;

 do_freeze = heap_prepare_freeze_tuple(tuple,
            relfrozenxid, relminmxid,
            cutoff_xid, cutoff_multi,
            &frz, &tuple_totally_frozen);






 if (do_freeze)
  heap_execute_freeze_tuple(tuple, &frz);
 return do_freeze;
}
