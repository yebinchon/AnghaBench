
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int tts_flags; int tts_isnull; int tts_values; int tts_tupleDescriptor; scalar_t__ tts_nvalid; int tts_mcxt; } ;
typedef TYPE_1__ TupleTableSlot ;
struct TYPE_7__ {scalar_t__ tuple; scalar_t__ off; } ;
typedef int MemoryContext ;
typedef TYPE_2__ HeapTupleTableSlot ;


 int Assert (int) ;
 int MemoryContextSwitchTo (int ) ;
 int TTS_EMPTY (TYPE_1__*) ;
 int TTS_FLAG_SHOULDFREE ;
 scalar_t__ TTS_SHOULDFREE (TYPE_1__*) ;
 scalar_t__ heap_copytuple (scalar_t__) ;
 scalar_t__ heap_form_tuple (int ,int ,int ) ;

__attribute__((used)) static void
tts_heap_materialize(TupleTableSlot *slot)
{
 HeapTupleTableSlot *hslot = (HeapTupleTableSlot *) slot;
 MemoryContext oldContext;

 Assert(!TTS_EMPTY(slot));


 if (TTS_SHOULDFREE(slot))
  return;

 oldContext = MemoryContextSwitchTo(slot->tts_mcxt);





 slot->tts_nvalid = 0;
 hslot->off = 0;

 if (!hslot->tuple)
  hslot->tuple = heap_form_tuple(slot->tts_tupleDescriptor,
            slot->tts_values,
            slot->tts_isnull);
 else
 {





  hslot->tuple = heap_copytuple(hslot->tuple);
 }

 slot->tts_flags |= TTS_FLAG_SHOULDFREE;

 MemoryContextSwitchTo(oldContext);
}
