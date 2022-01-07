
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_6__ {int * ecxt_scantuple; } ;
struct TYPE_5__ {scalar_t__ ii_Expressions; scalar_t__ ii_ExpressionsState; int ii_NumIndexAttrs; int* ii_IndexAttrNumbers; } ;
typedef int ListCell ;
typedef TYPE_1__ IndexInfo ;
typedef int ExprState ;
typedef int EState ;
typedef int Datum ;


 int Assert (int) ;
 int ERROR ;
 int ExecEvalExprSwitchContext (int *,TYPE_2__*,int*) ;
 scalar_t__ ExecPrepareExprList (scalar_t__,int *) ;
 TYPE_2__* GetPerTupleExprContext (int *) ;
 scalar_t__ NIL ;
 int elog (int ,char*) ;
 scalar_t__ lfirst (int *) ;
 int * list_head (scalar_t__) ;
 int * lnext (scalar_t__,int *) ;
 int slot_getattr (int *,int,int*) ;
 int slot_getsysattr (int *,int,int*) ;

void
FormIndexDatum(IndexInfo *indexInfo,
      TupleTableSlot *slot,
      EState *estate,
      Datum *values,
      bool *isnull)
{
 ListCell *indexpr_item;
 int i;

 if (indexInfo->ii_Expressions != NIL &&
  indexInfo->ii_ExpressionsState == NIL)
 {

  indexInfo->ii_ExpressionsState =
   ExecPrepareExprList(indexInfo->ii_Expressions, estate);

  Assert(GetPerTupleExprContext(estate)->ecxt_scantuple == slot);
 }
 indexpr_item = list_head(indexInfo->ii_ExpressionsState);

 for (i = 0; i < indexInfo->ii_NumIndexAttrs; i++)
 {
  int keycol = indexInfo->ii_IndexAttrNumbers[i];
  Datum iDatum;
  bool isNull;

  if (keycol < 0)
   iDatum = slot_getsysattr(slot, keycol, &isNull);
  else if (keycol != 0)
  {




   iDatum = slot_getattr(slot, keycol, &isNull);
  }
  else
  {



   if (indexpr_item == ((void*)0))
    elog(ERROR, "wrong number of index expressions");
   iDatum = ExecEvalExprSwitchContext((ExprState *) lfirst(indexpr_item),
              GetPerTupleExprContext(estate),
              &isNull);
   indexpr_item = lnext(indexInfo->ii_ExpressionsState, indexpr_item);
  }
  values[i] = iDatum;
  isnull[i] = isNull;
 }

 if (indexpr_item != ((void*)0))
  elog(ERROR, "wrong number of index expressions");
}
