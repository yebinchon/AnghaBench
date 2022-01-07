
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* tts_ops; } ;
typedef TYPE_2__ TupleTableSlot ;
struct TYPE_7__ {int (* copy_minimal_tuple ) (TYPE_2__*) ;int (* get_minimal_tuple ) (TYPE_2__*) ;} ;
typedef int MinimalTuple ;


 int Assert (int) ;
 int TTS_EMPTY (TYPE_2__*) ;
 int stub1 (TYPE_2__*) ;
 int stub2 (TYPE_2__*) ;

MinimalTuple
ExecFetchSlotMinimalTuple(TupleTableSlot *slot,
        bool *shouldFree)
{



 Assert(slot != ((void*)0));
 Assert(!TTS_EMPTY(slot));

 if (slot->tts_ops->get_minimal_tuple)
 {
  if (shouldFree)
   *shouldFree = 0;
  return slot->tts_ops->get_minimal_tuple(slot);
 }
 else
 {
  if (shouldFree)
   *shouldFree = 1;
  return slot->tts_ops->copy_minimal_tuple(slot);
 }
}
