
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int tts_isnull; int tts_values; int tts_tupleDescriptor; int tts_flags; int tts_mcxt; } ;
typedef TYPE_2__ TupleTableSlot ;
struct TYPE_11__ {int tuple; } ;
struct TYPE_13__ {TYPE_1__ base; } ;
typedef int MemoryContext ;
typedef int HeapTuple ;
typedef TYPE_3__ BufferHeapTupleTableSlot ;


 int ExecClearTuple (TYPE_2__*) ;
 int ExecMaterializeSlot (TYPE_2__*) ;
 int ExecStoreHeapTuple (int ,TYPE_2__*,int) ;
 int ExecStoreVirtualTuple (TYPE_2__*) ;
 int MemoryContextSwitchTo (int ) ;
 int TTS_FLAG_EMPTY ;
 int TTS_FLAG_SHOULDFREE ;
 scalar_t__ TTS_IS_BUFFERTUPLE (TYPE_2__*) ;
 scalar_t__ TTS_IS_HEAPTUPLE (TYPE_2__*) ;
 int heap_copytuple (int ) ;
 int heap_deform_tuple (int ,int ,int ,int ) ;
 int pfree (int ) ;

void
ExecForceStoreHeapTuple(HeapTuple tuple,
      TupleTableSlot *slot,
      bool shouldFree)
{
 if (TTS_IS_HEAPTUPLE(slot))
 {
  ExecStoreHeapTuple(tuple, slot, shouldFree);
 }
 else if (TTS_IS_BUFFERTUPLE(slot))
 {
  MemoryContext oldContext;
  BufferHeapTupleTableSlot *bslot = (BufferHeapTupleTableSlot *) slot;

  ExecClearTuple(slot);
  slot->tts_flags &= ~TTS_FLAG_EMPTY;
  oldContext = MemoryContextSwitchTo(slot->tts_mcxt);
  bslot->base.tuple = heap_copytuple(tuple);
  slot->tts_flags |= TTS_FLAG_SHOULDFREE;
  MemoryContextSwitchTo(oldContext);

  if (shouldFree)
   pfree(tuple);
 }
 else
 {
  ExecClearTuple(slot);
  heap_deform_tuple(tuple, slot->tts_tupleDescriptor,
        slot->tts_values, slot->tts_isnull);
  ExecStoreVirtualTuple(slot);

  if (shouldFree)
  {
   ExecMaterializeSlot(slot);
   pfree(tuple);
  }
 }
}
