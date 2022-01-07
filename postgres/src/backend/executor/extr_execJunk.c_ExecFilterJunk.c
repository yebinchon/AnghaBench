
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int* tts_isnull; int * tts_values; } ;
typedef TYPE_1__ TupleTableSlot ;
typedef TYPE_2__* TupleDesc ;
struct TYPE_13__ {int* jf_cleanMap; TYPE_1__* jf_resultSlot; TYPE_2__* jf_cleanTupType; } ;
struct TYPE_12__ {int natts; } ;
typedef TYPE_3__ JunkFilter ;
typedef int Datum ;
typedef int AttrNumber ;


 int ExecClearTuple (TYPE_1__*) ;
 TYPE_1__* ExecStoreVirtualTuple (TYPE_1__*) ;
 int slot_getallattrs (TYPE_1__*) ;

TupleTableSlot *
ExecFilterJunk(JunkFilter *junkfilter, TupleTableSlot *slot)
{
 TupleTableSlot *resultSlot;
 AttrNumber *cleanMap;
 TupleDesc cleanTupType;
 int cleanLength;
 int i;
 Datum *values;
 bool *isnull;
 Datum *old_values;
 bool *old_isnull;




 slot_getallattrs(slot);
 old_values = slot->tts_values;
 old_isnull = slot->tts_isnull;




 cleanTupType = junkfilter->jf_cleanTupType;
 cleanLength = cleanTupType->natts;
 cleanMap = junkfilter->jf_cleanMap;
 resultSlot = junkfilter->jf_resultSlot;




 ExecClearTuple(resultSlot);
 values = resultSlot->tts_values;
 isnull = resultSlot->tts_isnull;




 for (i = 0; i < cleanLength; i++)
 {
  int j = cleanMap[i];

  if (j == 0)
  {
   values[i] = (Datum) 0;
   isnull[i] = 1;
  }
  else
  {
   values[i] = old_values[j - 1];
   isnull[i] = old_isnull[j - 1];
  }
 }




 return ExecStoreVirtualTuple(resultSlot);
}
