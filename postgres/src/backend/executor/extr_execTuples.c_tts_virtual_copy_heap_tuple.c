
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int tts_isnull; int tts_values; int tts_tupleDescriptor; } ;
typedef TYPE_1__ TupleTableSlot ;
typedef int HeapTuple ;


 int Assert (int) ;
 int TTS_EMPTY (TYPE_1__*) ;
 int heap_form_tuple (int ,int ,int ) ;

__attribute__((used)) static HeapTuple
tts_virtual_copy_heap_tuple(TupleTableSlot *slot)
{
 Assert(!TTS_EMPTY(slot));

 return heap_form_tuple(slot->tts_tupleDescriptor,
         slot->tts_values,
         slot->tts_isnull);
}
