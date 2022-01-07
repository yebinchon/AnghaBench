
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int allowedMem; int availMem; int sortcontext; int * estate; int * tapeset; int ru_start; int worker; } ;
typedef TYPE_1__ Tuplesortstate ;
struct TYPE_7__ {int ecxt_scantuple; } ;
typedef int MemoryContext ;
typedef TYPE_2__ ExprContext ;


 int ExecDropSingleTupleTableSlot (int ) ;
 int FreeExecutorState (int *) ;
 TYPE_2__* GetPerTupleExprContext (int *) ;
 int LOG ;
 long LogicalTapeSetBlocks (int *) ;
 int LogicalTapeSetClose (int *) ;
 int MemoryContextDelete (int ) ;
 int MemoryContextSwitchTo (int ) ;
 scalar_t__ SERIAL (TYPE_1__*) ;
 int TRACE_POSTGRESQL_SORT_DONE (int ,long) ;
 int elog (int ,char*,char*,int ,long,int ) ;
 int pg_rusage_show (int *) ;
 scalar_t__ trace_sort ;

void
tuplesort_end(Tuplesortstate *state)
{

 MemoryContext oldcontext = MemoryContextSwitchTo(state->sortcontext);
 if (state->tapeset)
  LogicalTapeSetClose(state->tapeset);
 TRACE_POSTGRESQL_SORT_DONE(state->tapeset != ((void*)0), 0L);



 if (state->estate != ((void*)0))
 {
  ExprContext *econtext = GetPerTupleExprContext(state->estate);

  ExecDropSingleTupleTableSlot(econtext->ecxt_scantuple);
  FreeExecutorState(state->estate);
 }

 MemoryContextSwitchTo(oldcontext);





 MemoryContextDelete(state->sortcontext);
}
