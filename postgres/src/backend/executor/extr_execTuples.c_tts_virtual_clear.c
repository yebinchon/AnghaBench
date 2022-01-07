
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * data; } ;
typedef TYPE_1__ VirtualTupleTableSlot ;
struct TYPE_6__ {int tts_tid; int tts_flags; scalar_t__ tts_nvalid; } ;
typedef TYPE_2__ TupleTableSlot ;


 int ItemPointerSetInvalid (int *) ;
 int TTS_FLAG_EMPTY ;
 int TTS_FLAG_SHOULDFREE ;
 int TTS_SHOULDFREE (TYPE_2__*) ;
 int pfree (int *) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void
tts_virtual_clear(TupleTableSlot *slot)
{
 if (unlikely(TTS_SHOULDFREE(slot)))
 {
  VirtualTupleTableSlot *vslot = (VirtualTupleTableSlot *) slot;

  pfree(vslot->data);
  vslot->data = ((void*)0);

  slot->tts_flags &= ~TTS_FLAG_SHOULDFREE;
 }

 slot->tts_nvalid = 0;
 slot->tts_flags |= TTS_FLAG_EMPTY;
 ItemPointerSetInvalid(&slot->tts_tid);
}
