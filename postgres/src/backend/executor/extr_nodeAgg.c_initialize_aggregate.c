
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_14__ {size_t current_set; TYPE_1__* curaggcontext; } ;
struct TYPE_13__ {scalar_t__ noTransValue; scalar_t__ transValueIsNull; int transValue; } ;
struct TYPE_12__ {scalar_t__ numSortCols; int numInputs; scalar_t__ initValueIsNull; int transtypeLen; int transtypeByVal; int initValue; int * sortNullsFirst; int * sortCollations; int * sortOperators; int sortColIdx; int sortdesc; scalar_t__* sortstates; } ;
struct TYPE_11__ {int atttypid; } ;
struct TYPE_10__ {int ecxt_per_tuple_memory; } ;
typedef int MemoryContext ;
typedef TYPE_2__* Form_pg_attribute ;
typedef TYPE_3__* AggStatePerTrans ;
typedef TYPE_4__* AggStatePerGroup ;
typedef TYPE_5__ AggState ;


 int MemoryContextSwitchTo (int ) ;
 TYPE_2__* TupleDescAttr (int ,int ) ;
 int datumCopy (int ,int ,int ) ;
 scalar_t__ tuplesort_begin_datum (int ,int ,int ,int ,int ,int *,int) ;
 scalar_t__ tuplesort_begin_heap (int ,scalar_t__,int ,int *,int *,int *,int ,int *,int) ;
 int tuplesort_end (scalar_t__) ;
 int work_mem ;

__attribute__((used)) static void
initialize_aggregate(AggState *aggstate, AggStatePerTrans pertrans,
      AggStatePerGroup pergroupstate)
{



 if (pertrans->numSortCols > 0)
 {




  if (pertrans->sortstates[aggstate->current_set])
   tuplesort_end(pertrans->sortstates[aggstate->current_set]);







  if (pertrans->numInputs == 1)
  {
   Form_pg_attribute attr = TupleDescAttr(pertrans->sortdesc, 0);

   pertrans->sortstates[aggstate->current_set] =
    tuplesort_begin_datum(attr->atttypid,
           pertrans->sortOperators[0],
           pertrans->sortCollations[0],
           pertrans->sortNullsFirst[0],
           work_mem, ((void*)0), 0);
  }
  else
   pertrans->sortstates[aggstate->current_set] =
    tuplesort_begin_heap(pertrans->sortdesc,
          pertrans->numSortCols,
          pertrans->sortColIdx,
          pertrans->sortOperators,
          pertrans->sortCollations,
          pertrans->sortNullsFirst,
          work_mem, ((void*)0), 0);
 }







 if (pertrans->initValueIsNull)
  pergroupstate->transValue = pertrans->initValue;
 else
 {
  MemoryContext oldContext;

  oldContext = MemoryContextSwitchTo(
             aggstate->curaggcontext->ecxt_per_tuple_memory);
  pergroupstate->transValue = datumCopy(pertrans->initValue,
             pertrans->transtypeByVal,
             pertrans->transtypeLen);
  MemoryContextSwitchTo(oldContext);
 }
 pergroupstate->transValueIsNull = pertrans->initValueIsNull;
 pergroupstate->noTransValue = pertrans->initValueIsNull;
}
