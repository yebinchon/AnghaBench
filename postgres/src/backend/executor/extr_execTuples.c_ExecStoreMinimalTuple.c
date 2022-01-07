
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * tts_tupleDescriptor; } ;
typedef TYPE_1__ TupleTableSlot ;
typedef int * MinimalTuple ;


 int Assert (int ) ;
 int ERROR ;
 int TTS_IS_MINIMALTUPLE (TYPE_1__*) ;
 int elog (int ,char*) ;
 int tts_minimal_store_tuple (TYPE_1__*,int *,int) ;
 scalar_t__ unlikely (int) ;

TupleTableSlot *
ExecStoreMinimalTuple(MinimalTuple mtup,
       TupleTableSlot *slot,
       bool shouldFree)
{



 Assert(mtup != ((void*)0));
 Assert(slot != ((void*)0));
 Assert(slot->tts_tupleDescriptor != ((void*)0));

 if (unlikely(!TTS_IS_MINIMALTUPLE(slot)))
  elog(ERROR, "trying to store a minimal tuple into wrong type of slot");
 tts_minimal_store_tuple(slot, mtup, shouldFree);

 return slot;
}
