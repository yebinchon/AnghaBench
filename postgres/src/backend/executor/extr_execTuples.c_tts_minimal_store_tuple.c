
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int tts_flags; scalar_t__ tts_nvalid; } ;
typedef TYPE_2__ TupleTableSlot ;
struct TYPE_13__ {int t_len; } ;
struct TYPE_10__ {char* t_len; scalar_t__ t_data; } ;
struct TYPE_12__ {TYPE_1__ minhdr; TYPE_1__* tuple; TYPE_4__* mintuple; scalar_t__ off; } ;
typedef TYPE_3__ MinimalTupleTableSlot ;
typedef TYPE_4__* MinimalTuple ;
typedef scalar_t__ HeapTupleHeader ;


 int Assert (int) ;
 char* MINIMAL_TUPLE_OFFSET ;
 int TTS_EMPTY (TYPE_2__*) ;
 int TTS_FLAG_EMPTY ;
 int TTS_FLAG_SHOULDFREE ;
 int TTS_SHOULDFREE (TYPE_2__*) ;
 int tts_minimal_clear (TYPE_2__*) ;

__attribute__((used)) static void
tts_minimal_store_tuple(TupleTableSlot *slot, MinimalTuple mtup, bool shouldFree)
{
 MinimalTupleTableSlot *mslot = (MinimalTupleTableSlot *) slot;

 tts_minimal_clear(slot);

 Assert(!TTS_SHOULDFREE(slot));
 Assert(TTS_EMPTY(slot));

 slot->tts_flags &= ~TTS_FLAG_EMPTY;
 slot->tts_nvalid = 0;
 mslot->off = 0;

 mslot->mintuple = mtup;
 Assert(mslot->tuple == &mslot->minhdr);
 mslot->minhdr.t_len = mtup->t_len + MINIMAL_TUPLE_OFFSET;
 mslot->minhdr.t_data = (HeapTupleHeader) ((char *) mtup - MINIMAL_TUPLE_OFFSET);


 if (shouldFree)
  slot->tts_flags |= TTS_FLAG_SHOULDFREE;
}
