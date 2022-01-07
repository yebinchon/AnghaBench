
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int tts_flags; int tts_isnull; int tts_values; int tts_tupleDescriptor; scalar_t__ tts_nvalid; int tts_mcxt; } ;
typedef TYPE_2__ TupleTableSlot ;
struct TYPE_13__ {int t_len; } ;
struct TYPE_10__ {char* t_len; scalar_t__ t_data; } ;
struct TYPE_12__ {TYPE_5__* mintuple; TYPE_1__ minhdr; TYPE_1__* tuple; scalar_t__ off; } ;
typedef TYPE_3__ MinimalTupleTableSlot ;
typedef int MemoryContext ;
typedef scalar_t__ HeapTupleHeader ;


 int Assert (int) ;
 char* MINIMAL_TUPLE_OFFSET ;
 int MemoryContextSwitchTo (int ) ;
 int TTS_EMPTY (TYPE_2__*) ;
 int TTS_FLAG_SHOULDFREE ;
 scalar_t__ TTS_SHOULDFREE (TYPE_2__*) ;
 TYPE_5__* heap_copy_minimal_tuple (TYPE_5__*) ;
 TYPE_5__* heap_form_minimal_tuple (int ,int ,int ) ;

__attribute__((used)) static void
tts_minimal_materialize(TupleTableSlot *slot)
{
 MinimalTupleTableSlot *mslot = (MinimalTupleTableSlot *) slot;
 MemoryContext oldContext;

 Assert(!TTS_EMPTY(slot));


 if (TTS_SHOULDFREE(slot))
  return;

 oldContext = MemoryContextSwitchTo(slot->tts_mcxt);





 slot->tts_nvalid = 0;
 mslot->off = 0;

 if (!mslot->mintuple)
 {
  mslot->mintuple = heap_form_minimal_tuple(slot->tts_tupleDescriptor,
              slot->tts_values,
              slot->tts_isnull);
 }
 else
 {





  mslot->mintuple = heap_copy_minimal_tuple(mslot->mintuple);
 }

 slot->tts_flags |= TTS_FLAG_SHOULDFREE;

 Assert(mslot->tuple == &mslot->minhdr);

 mslot->minhdr.t_len = mslot->mintuple->t_len + MINIMAL_TUPLE_OFFSET;
 mslot->minhdr.t_data = (HeapTupleHeader) ((char *) mslot->mintuple - MINIMAL_TUPLE_OFFSET);

 MemoryContextSwitchTo(oldContext);
}
