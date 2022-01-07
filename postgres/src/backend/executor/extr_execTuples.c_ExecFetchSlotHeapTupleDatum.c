
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int tts_tupleDescriptor; } ;
typedef TYPE_1__ TupleTableSlot ;
typedef int TupleDesc ;
typedef int HeapTuple ;
typedef int Datum ;


 int ExecFetchSlotHeapTuple (TYPE_1__*,int,int*) ;
 int heap_copy_tuple_as_datum (int ,int ) ;
 int pfree (int ) ;

Datum
ExecFetchSlotHeapTupleDatum(TupleTableSlot *slot)
{
 HeapTuple tup;
 TupleDesc tupdesc;
 bool shouldFree;
 Datum ret;


 tup = ExecFetchSlotHeapTuple(slot, 0, &shouldFree);
 tupdesc = slot->tts_tupleDescriptor;


 ret = heap_copy_tuple_as_datum(tup, tupdesc);

 if (shouldFree)
  pfree(tup);

 return ret;
}
