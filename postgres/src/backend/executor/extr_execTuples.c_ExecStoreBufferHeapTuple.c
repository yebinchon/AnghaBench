
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int tts_tableOid; int * tts_tupleDescriptor; } ;
typedef TYPE_1__ TupleTableSlot ;
struct TYPE_10__ {int t_tableOid; } ;
typedef TYPE_2__* HeapTuple ;
typedef int Buffer ;


 int Assert (int ) ;
 int BufferIsValid (int ) ;
 int ERROR ;
 int TTS_IS_BUFFERTUPLE (TYPE_1__*) ;
 int elog (int ,char*) ;
 int tts_buffer_heap_store_tuple (TYPE_1__*,TYPE_2__*,int ,int) ;
 scalar_t__ unlikely (int) ;

TupleTableSlot *
ExecStoreBufferHeapTuple(HeapTuple tuple,
       TupleTableSlot *slot,
       Buffer buffer)
{



 Assert(tuple != ((void*)0));
 Assert(slot != ((void*)0));
 Assert(slot->tts_tupleDescriptor != ((void*)0));
 Assert(BufferIsValid(buffer));

 if (unlikely(!TTS_IS_BUFFERTUPLE(slot)))
  elog(ERROR, "trying to store an on-disk heap tuple into wrong type of slot");
 tts_buffer_heap_store_tuple(slot, tuple, buffer, 0);

 slot->tts_tableOid = tuple->t_tableOid;

 return slot;
}
