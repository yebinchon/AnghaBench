
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int tts_tid; int tts_flags; scalar_t__ tts_nvalid; } ;
typedef TYPE_2__ TupleTableSlot ;
struct TYPE_6__ {scalar_t__ off; int * tuple; } ;
struct TYPE_8__ {int buffer; TYPE_1__ base; } ;
typedef TYPE_3__ BufferHeapTupleTableSlot ;


 int Assert (int) ;
 scalar_t__ BufferIsValid (int ) ;
 int InvalidBuffer ;
 int ItemPointerSetInvalid (int *) ;
 int ReleaseBuffer (int ) ;
 int TTS_FLAG_EMPTY ;
 int TTS_FLAG_SHOULDFREE ;
 scalar_t__ TTS_SHOULDFREE (TYPE_2__*) ;
 int heap_freetuple (int *) ;

__attribute__((used)) static void
tts_buffer_heap_clear(TupleTableSlot *slot)
{
 BufferHeapTupleTableSlot *bslot = (BufferHeapTupleTableSlot *) slot;






 if (TTS_SHOULDFREE(slot))
 {

  Assert(!BufferIsValid(bslot->buffer));

  heap_freetuple(bslot->base.tuple);
  slot->tts_flags &= ~TTS_FLAG_SHOULDFREE;
 }

 if (BufferIsValid(bslot->buffer))
  ReleaseBuffer(bslot->buffer);

 slot->tts_nvalid = 0;
 slot->tts_flags |= TTS_FLAG_EMPTY;
 ItemPointerSetInvalid(&slot->tts_tid);
 bslot->base.tuple = ((void*)0);
 bslot->base.off = 0;
 bslot->buffer = InvalidBuffer;
}
