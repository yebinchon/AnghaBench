
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_18__ {int* tts_isnull; int * tts_values; } ;
typedef TYPE_1__ TupleTableSlot ;
typedef TYPE_2__* TupleDesc ;
struct TYPE_22__ {int * es_result_relation_info; } ;
struct TYPE_21__ {int t_data; int t_self; } ;
struct TYPE_20__ {int* attnoMap; int ctidAttno; scalar_t__ hasSystemCols; int resultRel; } ;
struct TYPE_19__ {int natts; } ;
typedef int ResultRelInfo ;
typedef TYPE_3__ PgFdwDirectModifyState ;
typedef int * ItemPointer ;
typedef TYPE_4__* HeapTuple ;
typedef TYPE_5__ EState ;
typedef int Datum ;


 scalar_t__ DatumGetPointer (int ) ;
 int ExecClearTuple (TYPE_1__*) ;
 TYPE_4__* ExecFetchSlotHeapTuple (TYPE_1__*,int,int *) ;
 TYPE_1__* ExecGetReturningSlot (TYPE_5__*,int *) ;
 int ExecStoreVirtualTuple (TYPE_1__*) ;
 int HeapTupleHeaderSetCmin (int ,int ) ;
 int HeapTupleHeaderSetXmax (int ,int ) ;
 int HeapTupleHeaderSetXmin (int ,int ) ;
 int InvalidTransactionId ;
 TYPE_2__* RelationGetDescr (int ) ;
 int slot_getallattrs (TYPE_1__*) ;

__attribute__((used)) static TupleTableSlot *
apply_returning_filter(PgFdwDirectModifyState *dmstate,
        TupleTableSlot *slot,
        EState *estate)
{
 ResultRelInfo *relInfo = estate->es_result_relation_info;
 TupleDesc resultTupType = RelationGetDescr(dmstate->resultRel);
 TupleTableSlot *resultSlot;
 Datum *values;
 bool *isnull;
 Datum *old_values;
 bool *old_isnull;
 int i;




 resultSlot = ExecGetReturningSlot(estate, relInfo);




 slot_getallattrs(slot);
 old_values = slot->tts_values;
 old_isnull = slot->tts_isnull;




 ExecClearTuple(resultSlot);
 values = resultSlot->tts_values;
 isnull = resultSlot->tts_isnull;




 for (i = 0; i < resultTupType->natts; i++)
 {
  int j = dmstate->attnoMap[i];

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




 ExecStoreVirtualTuple(resultSlot);






 if (dmstate->hasSystemCols)
 {
  HeapTuple resultTup = ExecFetchSlotHeapTuple(resultSlot, 1, ((void*)0));


  if (dmstate->ctidAttno)
  {
   ItemPointer ctid = ((void*)0);

   ctid = (ItemPointer) DatumGetPointer(old_values[dmstate->ctidAttno - 1]);
   resultTup->t_self = *ctid;
  }
  HeapTupleHeaderSetXmin(resultTup->t_data, InvalidTransactionId);
  HeapTupleHeaderSetXmax(resultTup->t_data, InvalidTransactionId);
  HeapTupleHeaderSetCmin(resultTup->t_data, InvalidTransactionId);
 }




 return resultSlot;
}
