
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int tts_tid; scalar_t__ tts_nvalid; int tts_flags; } ;
typedef TYPE_2__ TupleTableSlot ;
struct TYPE_9__ {scalar_t__ off; TYPE_3__* tuple; } ;
struct TYPE_12__ {scalar_t__ buffer; TYPE_1__ base; } ;
struct TYPE_11__ {int t_self; } ;
typedef TYPE_3__* HeapTuple ;
typedef TYPE_4__ BufferHeapTupleTableSlot ;
typedef scalar_t__ Buffer ;


 int Assert (int) ;
 scalar_t__ BufferIsValid (scalar_t__) ;
 int IncrBufferRefCount (scalar_t__) ;
 int ReleaseBuffer (scalar_t__) ;
 int TTS_FLAG_EMPTY ;
 int TTS_FLAG_SHOULDFREE ;
 scalar_t__ TTS_SHOULDFREE (TYPE_2__*) ;
 int heap_freetuple (TYPE_3__*) ;

__attribute__((used)) static inline void
tts_buffer_heap_store_tuple(TupleTableSlot *slot, HeapTuple tuple,
       Buffer buffer, bool transfer_pin)
{
 BufferHeapTupleTableSlot *bslot = (BufferHeapTupleTableSlot *) slot;

 if (TTS_SHOULDFREE(slot))
 {

  Assert(!BufferIsValid(bslot->buffer));

  heap_freetuple(bslot->base.tuple);
  slot->tts_flags &= ~TTS_FLAG_SHOULDFREE;
 }

 slot->tts_flags &= ~TTS_FLAG_EMPTY;
 slot->tts_nvalid = 0;
 bslot->base.tuple = tuple;
 bslot->base.off = 0;
 slot->tts_tid = tuple->t_self;
 if (bslot->buffer != buffer)
 {
  if (BufferIsValid(bslot->buffer))
   ReleaseBuffer(bslot->buffer);

  bslot->buffer = buffer;

  if (!transfer_pin && BufferIsValid(buffer))
   IncrBufferRefCount(buffer);
 }
 else if (transfer_pin && BufferIsValid(buffer))
 {




  ReleaseBuffer(buffer);
 }
}
