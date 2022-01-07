
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_9__ ;
typedef struct TYPE_28__ TYPE_8__ ;
typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_10__ ;


struct TYPE_24__ {int* tts_isnull; int * tts_values; TYPE_5__* tts_tupleDescriptor; } ;
typedef TYPE_4__ TupleTableSlot ;
typedef TYPE_5__* TupleDesc ;
struct TYPE_22__ {scalar_t__ plan; } ;
struct TYPE_23__ {TYPE_4__* ss_ScanTupleSlot; TYPE_2__ ps; } ;
struct TYPE_26__ {int tupstore; int coldefexprs; int notnulls; int ordinal; TYPE_3__ ss; TYPE_8__* routine; } ;
typedef TYPE_6__ TableFuncScanState ;
struct TYPE_27__ {TYPE_1__* tablefunc; } ;
typedef TYPE_7__ TableFuncScan ;
struct TYPE_28__ {int (* GetValue ) (TYPE_6__*,int,int ,int ,int*) ;scalar_t__ (* FetchRow ) (TYPE_6__*) ;} ;
typedef TYPE_8__ TableFuncRoutine ;
struct TYPE_29__ {int attname; int atttypmod; int atttypid; } ;
struct TYPE_25__ {int natts; } ;
struct TYPE_21__ {int ordinalitycol; } ;
struct TYPE_20__ {int ecxt_per_tuple_memory; } ;
typedef int MemoryContext ;
typedef int ListCell ;
typedef TYPE_9__* Form_pg_attribute ;
typedef int ExprState ;
typedef TYPE_10__ ExprContext ;
typedef int Datum ;


 int CHECK_FOR_INTERRUPTS () ;
 int ERRCODE_NULL_VALUE_NOT_ALLOWED ;
 int ERROR ;
 int ExecClearTuple (TYPE_4__*) ;
 int ExecEvalExpr (int *,TYPE_10__*,int*) ;
 int Int32GetDatum (int ) ;
 int MemoryContextReset (int ) ;
 int MemoryContextSwitchTo (int ) ;
 int NameStr (int ) ;
 TYPE_9__* TupleDescAttr (TYPE_5__*,int) ;
 scalar_t__ bms_is_member (int,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 scalar_t__ lfirst (int *) ;
 int * list_head (int ) ;
 int * lnext (int ,int *) ;
 scalar_t__ stub1 (TYPE_6__*) ;
 int stub2 (TYPE_6__*,int,int ,int ,int*) ;
 int tuplestore_putvalues (int ,TYPE_5__*,int *,int*) ;

__attribute__((used)) static void
tfuncLoadRows(TableFuncScanState *tstate, ExprContext *econtext)
{
 const TableFuncRoutine *routine = tstate->routine;
 TupleTableSlot *slot = tstate->ss.ss_ScanTupleSlot;
 TupleDesc tupdesc = slot->tts_tupleDescriptor;
 Datum *values = slot->tts_values;
 bool *nulls = slot->tts_isnull;
 int natts = tupdesc->natts;
 MemoryContext oldcxt;
 int ordinalitycol;

 ordinalitycol =
  ((TableFuncScan *) (tstate->ss.ps.plan))->tablefunc->ordinalitycol;







 oldcxt = MemoryContextSwitchTo(econtext->ecxt_per_tuple_memory);




 while (routine->FetchRow(tstate))
 {
  ListCell *cell = list_head(tstate->coldefexprs);
  int colno;

  CHECK_FOR_INTERRUPTS();

  ExecClearTuple(tstate->ss.ss_ScanTupleSlot);





  for (colno = 0; colno < natts; colno++)
  {
   Form_pg_attribute att = TupleDescAttr(tupdesc, colno);

   if (colno == ordinalitycol)
   {

    values[colno] = Int32GetDatum(tstate->ordinal++);
    nulls[colno] = 0;
   }
   else
   {
    bool isnull;

    values[colno] = routine->GetValue(tstate,
              colno,
              att->atttypid,
              att->atttypmod,
              &isnull);


    if (isnull && cell != ((void*)0))
    {
     ExprState *coldefexpr = (ExprState *) lfirst(cell);

     if (coldefexpr != ((void*)0))
      values[colno] = ExecEvalExpr(coldefexpr, econtext,
              &isnull);
    }


    if (isnull && bms_is_member(colno, tstate->notnulls))
     ereport(ERROR,
       (errcode(ERRCODE_NULL_VALUE_NOT_ALLOWED),
        errmsg("null is not allowed in column \"%s\"",
         NameStr(att->attname))));

    nulls[colno] = isnull;
   }


   if (cell != ((void*)0))
    cell = lnext(tstate->coldefexprs, cell);
  }

  tuplestore_putvalues(tstate->tupstore, tupdesc, values, nulls);

  MemoryContextReset(econtext->ecxt_per_tuple_memory);
 }

 MemoryContextSwitchTo(oldcxt);
}
