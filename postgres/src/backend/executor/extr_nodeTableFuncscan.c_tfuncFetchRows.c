
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_19__ {TYPE_2__* ss_ScanTupleSlot; } ;
struct TYPE_20__ {int ordinal; int perTableCxt; int * opaque; int docexpr; TYPE_3__ ss; int tupstore; TYPE_5__* routine; } ;
typedef TYPE_4__ TableFuncScanState ;
struct TYPE_21__ {int (* DestroyOpaque ) (TYPE_4__*) ;int (* InitOpaque ) (TYPE_4__*,int ) ;} ;
typedef TYPE_5__ TableFuncRoutine ;
struct TYPE_22__ {int ecxt_per_query_memory; } ;
struct TYPE_18__ {TYPE_1__* tts_tupleDescriptor; } ;
struct TYPE_17__ {int natts; } ;
typedef int MemoryContext ;
typedef TYPE_6__ ExprContext ;
typedef int Datum ;


 int Assert (int ) ;
 int ExecEvalExpr (int ,TYPE_6__*,int*) ;
 int MemoryContextReset (int ) ;
 int MemoryContextSwitchTo (int ) ;
 int PG_CATCH () ;
 int PG_END_TRY () ;
 int PG_RE_THROW () ;
 int PG_TRY () ;
 int stub1 (TYPE_4__*,int ) ;
 int stub2 (TYPE_4__*) ;
 int stub3 (TYPE_4__*) ;
 int tfuncInitialize (TYPE_4__*,TYPE_6__*,int ) ;
 int tfuncLoadRows (TYPE_4__*,TYPE_6__*) ;
 int tuplestore_begin_heap (int,int,int ) ;
 int work_mem ;

__attribute__((used)) static void
tfuncFetchRows(TableFuncScanState *tstate, ExprContext *econtext)
{
 const TableFuncRoutine *routine = tstate->routine;
 MemoryContext oldcxt;
 Datum value;
 bool isnull;

 Assert(tstate->opaque == ((void*)0));


 oldcxt = MemoryContextSwitchTo(econtext->ecxt_per_query_memory);
 tstate->tupstore = tuplestore_begin_heap(0, 0, work_mem);
 MemoryContextSwitchTo(tstate->perTableCxt);

 PG_TRY();
 {
  routine->InitOpaque(tstate,
       tstate->ss.ss_ScanTupleSlot->tts_tupleDescriptor->natts);





  value = ExecEvalExpr(tstate->docexpr, econtext, &isnull);

  if (!isnull)
  {

   tfuncInitialize(tstate, econtext, value);


   tstate->ordinal = 1;


   tfuncLoadRows(tstate, econtext);
  }
 }
 PG_CATCH();
 {
  if (tstate->opaque != ((void*)0))
   routine->DestroyOpaque(tstate);
  PG_RE_THROW();
 }
 PG_END_TRY();



 if (tstate->opaque != ((void*)0))
 {
  routine->DestroyOpaque(tstate);
  tstate->opaque = ((void*)0);
 }

 MemoryContextSwitchTo(oldcxt);
 MemoryContextReset(tstate->perTableCxt);

 return;
}
