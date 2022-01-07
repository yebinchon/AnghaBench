
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ tts_ops; int tts_flags; int tts_mcxt; } ;
typedef TYPE_2__ TupleTableSlot ;
struct TYPE_10__ {int tupdata; int * tuple; } ;
struct TYPE_12__ {TYPE_1__ base; int buffer; } ;
typedef int MemoryContext ;
typedef int HeapTupleData ;
typedef TYPE_3__ BufferHeapTupleTableSlot ;


 int Assert (int ) ;
 int BufferIsValid (int ) ;
 int ExecClearTuple (TYPE_2__*) ;
 int * ExecCopySlotHeapTuple (TYPE_2__*) ;
 int MemoryContextSwitchTo (int ) ;
 int TTS_FLAG_EMPTY ;
 int TTS_FLAG_SHOULDFREE ;
 scalar_t__ TTS_SHOULDFREE (TYPE_2__*) ;
 int memcpy (int *,int *,int) ;
 int tts_buffer_heap_store_tuple (TYPE_2__*,int *,int ,int) ;

__attribute__((used)) static void
tts_buffer_heap_copyslot(TupleTableSlot *dstslot, TupleTableSlot *srcslot)
{
 BufferHeapTupleTableSlot *bsrcslot = (BufferHeapTupleTableSlot *) srcslot;
 BufferHeapTupleTableSlot *bdstslot = (BufferHeapTupleTableSlot *) dstslot;






 if (dstslot->tts_ops != srcslot->tts_ops ||
  TTS_SHOULDFREE(srcslot) ||
  !bsrcslot->base.tuple)
 {
  MemoryContext oldContext;

  ExecClearTuple(dstslot);
  dstslot->tts_flags &= ~TTS_FLAG_EMPTY;
  oldContext = MemoryContextSwitchTo(dstslot->tts_mcxt);
  bdstslot->base.tuple = ExecCopySlotHeapTuple(srcslot);
  dstslot->tts_flags |= TTS_FLAG_SHOULDFREE;
  MemoryContextSwitchTo(oldContext);
 }
 else
 {
  Assert(BufferIsValid(bsrcslot->buffer));

  tts_buffer_heap_store_tuple(dstslot, bsrcslot->base.tuple,
         bsrcslot->buffer, 0);







  memcpy(&bdstslot->base.tupdata, bdstslot->base.tuple, sizeof(HeapTupleData));
  bdstslot->base.tuple = &bdstslot->base.tupdata;
 }
}
