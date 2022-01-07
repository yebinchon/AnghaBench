
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


 int Assert (int ) ;
 int ERROR ;
 int TTS_IS_HEAPTUPLE (TYPE_1__*) ;
 int elog (int ,char*) ;
 int tts_heap_store_tuple (TYPE_1__*,TYPE_2__*,int) ;
 scalar_t__ unlikely (int) ;

TupleTableSlot *
ExecStoreHeapTuple(HeapTuple tuple,
       TupleTableSlot *slot,
       bool shouldFree)
{



 Assert(tuple != ((void*)0));
 Assert(slot != ((void*)0));
 Assert(slot->tts_tupleDescriptor != ((void*)0));

 if (unlikely(!TTS_IS_HEAPTUPLE(slot)))
  elog(ERROR, "trying to store a heap tuple into wrong type of slot");
 tts_heap_store_tuple(slot, tuple, shouldFree);

 slot->tts_tableOid = tuple->t_tableOid;

 return slot;
}
