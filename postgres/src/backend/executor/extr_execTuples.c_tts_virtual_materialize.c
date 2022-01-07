
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {char* data; } ;
typedef TYPE_1__ VirtualTupleTableSlot ;
struct TYPE_10__ {void** tts_values; scalar_t__* tts_isnull; int tts_flags; int tts_mcxt; TYPE_3__* tts_tupleDescriptor; } ;
typedef TYPE_2__ TupleTableSlot ;
typedef TYPE_3__* TupleDesc ;
struct TYPE_12__ {int attlen; int attalign; scalar_t__ attbyval; } ;
struct TYPE_11__ {int natts; } ;
typedef scalar_t__ Size ;
typedef TYPE_4__* Form_pg_attribute ;
typedef int ExpandedObjectHeader ;
typedef void* Datum ;


 int * DatumGetEOHP (void*) ;
 int DatumGetPointer (void*) ;
 int EOH_flatten_into (int *,char*,scalar_t__) ;
 scalar_t__ EOH_get_flat_size (int *) ;
 char* MemoryContextAlloc (int ,scalar_t__) ;
 void* PointerGetDatum (char*) ;
 int TTS_FLAG_SHOULDFREE ;
 scalar_t__ TTS_SHOULDFREE (TYPE_2__*) ;
 TYPE_4__* TupleDescAttr (TYPE_3__*,int) ;
 scalar_t__ VARATT_IS_EXTERNAL_EXPANDED (int ) ;
 scalar_t__ att_addlength_datum (scalar_t__,int,void*) ;
 scalar_t__ att_align_nominal (char*,int ) ;
 int memcpy (char*,int ,scalar_t__) ;

__attribute__((used)) static void
tts_virtual_materialize(TupleTableSlot *slot)
{
 VirtualTupleTableSlot *vslot = (VirtualTupleTableSlot *) slot;
 TupleDesc desc = slot->tts_tupleDescriptor;
 Size sz = 0;
 char *data;


 if (TTS_SHOULDFREE(slot))
  return;


 for (int natt = 0; natt < desc->natts; natt++)
 {
  Form_pg_attribute att = TupleDescAttr(desc, natt);
  Datum val;

  if (att->attbyval || slot->tts_isnull[natt])
   continue;

  val = slot->tts_values[natt];

  if (att->attlen == -1 &&
   VARATT_IS_EXTERNAL_EXPANDED(DatumGetPointer(val)))
  {




   sz = att_align_nominal(sz, att->attalign);
   sz += EOH_get_flat_size(DatumGetEOHP(val));
  }
  else
  {
   sz = att_align_nominal(sz, att->attalign);
   sz = att_addlength_datum(sz, att->attlen, val);
  }
 }


 if (sz == 0)
  return;


 vslot->data = data = MemoryContextAlloc(slot->tts_mcxt, sz);
 slot->tts_flags |= TTS_FLAG_SHOULDFREE;


 for (int natt = 0; natt < desc->natts; natt++)
 {
  Form_pg_attribute att = TupleDescAttr(desc, natt);
  Datum val;

  if (att->attbyval || slot->tts_isnull[natt])
   continue;

  val = slot->tts_values[natt];

  if (att->attlen == -1 &&
   VARATT_IS_EXTERNAL_EXPANDED(DatumGetPointer(val)))
  {
   Size data_length;





   ExpandedObjectHeader *eoh = DatumGetEOHP(val);

   data = (char *) att_align_nominal(data,
             att->attalign);
   data_length = EOH_get_flat_size(eoh);
   EOH_flatten_into(eoh, data, data_length);

   slot->tts_values[natt] = PointerGetDatum(data);
   data += data_length;
  }
  else
  {
   Size data_length = 0;

   data = (char *) att_align_nominal(data, att->attalign);
   data_length = att_addlength_datum(data_length, att->attlen, val);

   memcpy(data, DatumGetPointer(val), data_length);

   slot->tts_values[natt] = PointerGetDatum(data);
   data += data_length;
  }
 }
}
