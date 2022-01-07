
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int tts_flags; int tts_isnull; int tts_values; int tts_tupleDescriptor; scalar_t__ tts_nvalid; int tts_mcxt; } ;
typedef TYPE_2__ TupleTableSlot ;
struct TYPE_7__ {scalar_t__ tuple; scalar_t__ off; } ;
struct TYPE_9__ {int buffer; TYPE_1__ base; } ;
typedef int MemoryContext ;
typedef TYPE_3__ BufferHeapTupleTableSlot ;


 int Assert (int) ;
 int BufferIsValid (int ) ;
 int InvalidBuffer ;
 int MemoryContextSwitchTo (int ) ;
 int ReleaseBuffer (int ) ;
 int TTS_EMPTY (TYPE_2__*) ;
 int TTS_FLAG_SHOULDFREE ;
 scalar_t__ TTS_SHOULDFREE (TYPE_2__*) ;
 scalar_t__ heap_copytuple (scalar_t__) ;
 scalar_t__ heap_form_tuple (int ,int ,int ) ;
 scalar_t__ likely (int ) ;

__attribute__((used)) static void
tts_buffer_heap_materialize(TupleTableSlot *slot)
{
 BufferHeapTupleTableSlot *bslot = (BufferHeapTupleTableSlot *) slot;
 MemoryContext oldContext;

 Assert(!TTS_EMPTY(slot));


 if (TTS_SHOULDFREE(slot))
  return;

 oldContext = MemoryContextSwitchTo(slot->tts_mcxt);





 bslot->base.off = 0;
 slot->tts_nvalid = 0;

 if (!bslot->base.tuple)
 {







  bslot->base.tuple = heap_form_tuple(slot->tts_tupleDescriptor,
           slot->tts_values,
           slot->tts_isnull);
 }
 else
 {
  bslot->base.tuple = heap_copytuple(bslot->base.tuple);





  if (likely(BufferIsValid(bslot->buffer)))
   ReleaseBuffer(bslot->buffer);
  bslot->buffer = InvalidBuffer;
 }
 slot->tts_flags |= TTS_FLAG_SHOULDFREE;

 MemoryContextSwitchTo(oldContext);
}
