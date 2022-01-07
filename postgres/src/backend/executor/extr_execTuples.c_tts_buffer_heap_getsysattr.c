
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int tts_tupleDescriptor; } ;
typedef TYPE_2__ TupleTableSlot ;
struct TYPE_6__ {int tuple; } ;
struct TYPE_8__ {TYPE_1__ base; } ;
typedef int Datum ;
typedef TYPE_3__ BufferHeapTupleTableSlot ;


 int Assert (int) ;
 int TTS_EMPTY (TYPE_2__*) ;
 int heap_getsysattr (int ,int,int ,int*) ;

__attribute__((used)) static Datum
tts_buffer_heap_getsysattr(TupleTableSlot *slot, int attnum, bool *isnull)
{
 BufferHeapTupleTableSlot *bslot = (BufferHeapTupleTableSlot *) slot;

 Assert(!TTS_EMPTY(slot));

 return heap_getsysattr(bslot->base.tuple, attnum,
         slot->tts_tupleDescriptor, isnull);
}
