
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_2__ {int tuple; } ;
typedef int MinimalTuple ;
typedef TYPE_1__ HeapTupleTableSlot ;


 int minimal_tuple_from_heap_tuple (int ) ;
 int tts_heap_materialize (int *) ;

__attribute__((used)) static MinimalTuple
tts_heap_copy_minimal_tuple(TupleTableSlot *slot)
{
 HeapTupleTableSlot *hslot = (HeapTupleTableSlot *) slot;

 if (!hslot->tuple)
  tts_heap_materialize(slot);

 return minimal_tuple_from_heap_tuple(hslot->tuple);
}
