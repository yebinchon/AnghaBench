
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int tts_nvalid; int tts_flags; int * tts_isnull; int * tts_values; TYPE_2__* tts_tupleDescriptor; } ;
typedef TYPE_1__ TupleTableSlot ;
typedef TYPE_2__* TupleDesc ;
struct TYPE_9__ {scalar_t__ natts; } ;


 int Assert (int) ;
 int TTS_FLAG_EMPTY ;
 int slot_getallattrs (TYPE_1__*) ;
 int tts_virtual_clear (TYPE_1__*) ;
 int tts_virtual_materialize (TYPE_1__*) ;

__attribute__((used)) static void
tts_virtual_copyslot(TupleTableSlot *dstslot, TupleTableSlot *srcslot)
{
 TupleDesc srcdesc = srcslot->tts_tupleDescriptor;

 Assert(srcdesc->natts <= dstslot->tts_tupleDescriptor->natts);

 tts_virtual_clear(dstslot);

 slot_getallattrs(srcslot);

 for (int natt = 0; natt < srcdesc->natts; natt++)
 {
  dstslot->tts_values[natt] = srcslot->tts_values[natt];
  dstslot->tts_isnull[natt] = srcslot->tts_isnull[natt];
 }

 dstslot->tts_nvalid = srcdesc->natts;
 dstslot->tts_flags &= ~TTS_FLAG_EMPTY;


 tts_virtual_materialize(dstslot);
}
