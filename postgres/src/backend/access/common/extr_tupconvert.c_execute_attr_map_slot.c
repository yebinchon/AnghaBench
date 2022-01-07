
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int* tts_isnull; int * tts_values; TYPE_1__* tts_tupleDescriptor; } ;
typedef TYPE_2__ TupleTableSlot ;
struct TYPE_9__ {int natts; } ;
typedef int Datum ;
typedef int AttrNumber ;


 int Assert (int) ;
 int ExecClearTuple (TYPE_2__*) ;
 int ExecStoreVirtualTuple (TYPE_2__*) ;
 int slot_getallattrs (TYPE_2__*) ;

TupleTableSlot *
execute_attr_map_slot(AttrNumber *attrMap,
       TupleTableSlot *in_slot,
       TupleTableSlot *out_slot)
{
 Datum *invalues;
 bool *inisnull;
 Datum *outvalues;
 bool *outisnull;
 int outnatts;
 int i;


 Assert(in_slot->tts_tupleDescriptor != ((void*)0) &&
     out_slot->tts_tupleDescriptor != ((void*)0));
 Assert(in_slot->tts_values != ((void*)0) && out_slot->tts_values != ((void*)0));

 outnatts = out_slot->tts_tupleDescriptor->natts;


 slot_getallattrs(in_slot);


 ExecClearTuple(out_slot);

 invalues = in_slot->tts_values;
 inisnull = in_slot->tts_isnull;
 outvalues = out_slot->tts_values;
 outisnull = out_slot->tts_isnull;


 for (i = 0; i < outnatts; i++)
 {
  int j = attrMap[i] - 1;


  if (j == -1)
  {
   outvalues[i] = (Datum) 0;
   outisnull[i] = 1;
  }
  else
  {
   outvalues[i] = invalues[j];
   outisnull[i] = inisnull[j];
  }
 }

 ExecStoreVirtualTuple(out_slot);

 return out_slot;
}
