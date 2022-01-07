
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int tts_tupleDescriptor; } ;
typedef TYPE_1__ TupleTableSlot ;
struct TYPE_6__ {int tuple; } ;
typedef TYPE_2__ HeapTupleTableSlot ;
typedef int Datum ;


 int Assert (int) ;
 int TTS_EMPTY (TYPE_1__*) ;
 int heap_getsysattr (int ,int,int ,int*) ;

__attribute__((used)) static Datum
tts_heap_getsysattr(TupleTableSlot *slot, int attnum, bool *isnull)
{
 HeapTupleTableSlot *hslot = (HeapTupleTableSlot *) slot;

 Assert(!TTS_EMPTY(slot));

 return heap_getsysattr(hslot->tuple, attnum,
         slot->tts_tupleDescriptor, isnull);
}
