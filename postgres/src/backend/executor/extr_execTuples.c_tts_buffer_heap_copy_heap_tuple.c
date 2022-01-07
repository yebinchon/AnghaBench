
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_3__ {int tuple; } ;
struct TYPE_4__ {TYPE_1__ base; } ;
typedef int HeapTuple ;
typedef TYPE_2__ BufferHeapTupleTableSlot ;


 int Assert (int) ;
 int TTS_EMPTY (int *) ;
 int heap_copytuple (int ) ;
 int tts_buffer_heap_materialize (int *) ;

__attribute__((used)) static HeapTuple
tts_buffer_heap_copy_heap_tuple(TupleTableSlot *slot)
{
 BufferHeapTupleTableSlot *bslot = (BufferHeapTupleTableSlot *) slot;

 Assert(!TTS_EMPTY(slot));

 if (!bslot->base.tuple)
  tts_buffer_heap_materialize(slot);

 return heap_copytuple(bslot->base.tuple);
}
