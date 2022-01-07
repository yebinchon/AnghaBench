
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* tts_tupleDescriptor; int tts_nvalid; int tts_flags; } ;
typedef TYPE_2__ TupleTableSlot ;
struct TYPE_6__ {int natts; } ;


 int Assert (int ) ;
 int TTS_EMPTY (TYPE_2__*) ;
 int TTS_FLAG_EMPTY ;

TupleTableSlot *
ExecStoreVirtualTuple(TupleTableSlot *slot)
{



 Assert(slot != ((void*)0));
 Assert(slot->tts_tupleDescriptor != ((void*)0));
 Assert(TTS_EMPTY(slot));

 slot->tts_flags &= ~TTS_FLAG_EMPTY;
 slot->tts_nvalid = slot->tts_tupleDescriptor->natts;

 return slot;
}
