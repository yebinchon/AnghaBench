
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_2__ {int tuple; } ;
typedef TYPE_1__ HeapTupleTableSlot ;
typedef int HeapTuple ;


 int Assert (int) ;
 int TTS_EMPTY (int *) ;
 int tts_heap_materialize (int *) ;

__attribute__((used)) static HeapTuple
tts_heap_get_heap_tuple(TupleTableSlot *slot)
{
 HeapTupleTableSlot *hslot = (HeapTupleTableSlot *) slot;

 Assert(!TTS_EMPTY(slot));
 if (!hslot->tuple)
  tts_heap_materialize(slot);

 return hslot->tuple;
}
