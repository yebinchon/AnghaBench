
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int tts_tid; int tts_flags; scalar_t__ tts_nvalid; } ;
typedef TYPE_1__ TupleTableSlot ;
struct TYPE_6__ {int * tuple; scalar_t__ off; } ;
typedef TYPE_2__ HeapTupleTableSlot ;


 int ItemPointerSetInvalid (int *) ;
 int TTS_FLAG_EMPTY ;
 int TTS_FLAG_SHOULDFREE ;
 scalar_t__ TTS_SHOULDFREE (TYPE_1__*) ;
 int heap_freetuple (int *) ;

__attribute__((used)) static void
tts_heap_clear(TupleTableSlot *slot)
{
 HeapTupleTableSlot *hslot = (HeapTupleTableSlot *) slot;


 if (TTS_SHOULDFREE(slot))
 {
  heap_freetuple(hslot->tuple);
  slot->tts_flags &= ~TTS_FLAG_SHOULDFREE;
 }

 slot->tts_nvalid = 0;
 slot->tts_flags |= TTS_FLAG_EMPTY;
 ItemPointerSetInvalid(&slot->tts_tid);
 hslot->off = 0;
 hslot->tuple = ((void*)0);
}
