
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* tts_ops; } ;
typedef TYPE_2__ TupleTableSlot ;
struct TYPE_8__ {int (* get_heap_tuple ) (TYPE_2__*) ;int (* copy_heap_tuple ) (TYPE_2__*) ;int (* materialize ) (TYPE_2__*) ;} ;
typedef int HeapTuple ;


 int Assert (int) ;
 int TTS_EMPTY (TYPE_2__*) ;
 int stub1 (TYPE_2__*) ;
 int stub2 (TYPE_2__*) ;
 int stub3 (TYPE_2__*) ;

HeapTuple
ExecFetchSlotHeapTuple(TupleTableSlot *slot, bool materialize, bool *shouldFree)
{



 Assert(slot != ((void*)0));
 Assert(!TTS_EMPTY(slot));


 if (materialize)
  slot->tts_ops->materialize(slot);

 if (slot->tts_ops->get_heap_tuple == ((void*)0))
 {
  if (shouldFree)
   *shouldFree = 1;
  return slot->tts_ops->copy_heap_tuple(slot);
 }
 else
 {
  if (shouldFree)
   *shouldFree = 0;
  return slot->tts_ops->get_heap_tuple(slot);
 }
}
