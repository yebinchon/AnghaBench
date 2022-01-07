
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct varlena {int dummy; } ;
struct TYPE_10__ {int * tts_isnull; void** tts_values; TYPE_2__* tts_tupleDescriptor; } ;
typedef TYPE_1__ TupleTableSlot ;
typedef TYPE_2__* TupleDesc ;
struct TYPE_13__ {int attlen; int attisdropped; } ;
struct TYPE_12__ {void** tofree; void** outvalues; int tstore; int cxt; } ;
struct TYPE_11__ {int natts; } ;
typedef TYPE_3__ TStoreState ;
typedef int MemoryContext ;
typedef TYPE_4__* Form_pg_attribute ;
typedef int DestReceiver ;
typedef void* Datum ;


 scalar_t__ DatumGetPointer (void*) ;
 int MemoryContextSwitchTo (int ) ;
 void* PointerGetDatum (int ) ;
 TYPE_4__* TupleDescAttr (TYPE_2__*,int) ;
 scalar_t__ VARATT_IS_EXTERNAL (scalar_t__) ;
 int detoast_external_attr (struct varlena*) ;
 int pfree (scalar_t__) ;
 int slot_getallattrs (TYPE_1__*) ;
 int tuplestore_putvalues (int ,TYPE_2__*,void**,int *) ;

__attribute__((used)) static bool
tstoreReceiveSlot_detoast(TupleTableSlot *slot, DestReceiver *self)
{
 TStoreState *myState = (TStoreState *) self;
 TupleDesc typeinfo = slot->tts_tupleDescriptor;
 int natts = typeinfo->natts;
 int nfree;
 int i;
 MemoryContext oldcxt;


 slot_getallattrs(slot);






 nfree = 0;
 for (i = 0; i < natts; i++)
 {
  Datum val = slot->tts_values[i];
  Form_pg_attribute attr = TupleDescAttr(typeinfo, i);

  if (!attr->attisdropped && attr->attlen == -1 && !slot->tts_isnull[i])
  {
   if (VARATT_IS_EXTERNAL(DatumGetPointer(val)))
   {
    val = PointerGetDatum(detoast_external_attr((struct varlena *)
               DatumGetPointer(val)));
    myState->tofree[nfree++] = val;
   }
  }

  myState->outvalues[i] = val;
 }




 oldcxt = MemoryContextSwitchTo(myState->cxt);
 tuplestore_putvalues(myState->tstore, typeinfo,
       myState->outvalues, slot->tts_isnull);
 MemoryContextSwitchTo(oldcxt);


 for (i = 0; i < nfree; i++)
  pfree(DatumGetPointer(myState->tofree[i]));

 return 1;
}
