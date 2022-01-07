
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_3__ {int off; int tuple; } ;
struct TYPE_4__ {TYPE_1__ base; } ;
typedef TYPE_2__ BufferHeapTupleTableSlot ;


 int Assert (int) ;
 int TTS_EMPTY (int *) ;
 int slot_deform_heap_tuple (int *,int ,int *,int) ;

__attribute__((used)) static void
tts_buffer_heap_getsomeattrs(TupleTableSlot *slot, int natts)
{
 BufferHeapTupleTableSlot *bslot = (BufferHeapTupleTableSlot *) slot;

 Assert(!TTS_EMPTY(slot));

 slot_deform_heap_tuple(slot, bslot->base.tuple, &bslot->base.off, natts);
}
