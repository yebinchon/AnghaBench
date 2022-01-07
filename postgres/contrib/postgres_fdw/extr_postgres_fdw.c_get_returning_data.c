
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_12__ ;


typedef int TupleTableSlot ;
struct TYPE_20__ {int es_processed; TYPE_4__* es_result_relation_info; } ;
struct TYPE_14__ {TYPE_7__* state; } ;
struct TYPE_15__ {int * ss_ScanTupleSlot; TYPE_1__ ps; } ;
struct TYPE_19__ {TYPE_2__ ss; scalar_t__ fdw_state; } ;
struct TYPE_18__ {scalar_t__ next_tuple; scalar_t__ num_tuples; scalar_t__ rel; scalar_t__ result; int temp_cxt; int retrieved_attrs; int attinmeta; int has_returning; scalar_t__ set_processed; } ;
struct TYPE_17__ {TYPE_12__* ri_projectReturning; } ;
struct TYPE_16__ {int * ecxt_scantuple; } ;
struct TYPE_13__ {TYPE_3__* pi_exprContext; } ;
typedef TYPE_4__ ResultRelInfo ;
typedef TYPE_5__ PgFdwDirectModifyState ;
typedef int HeapTuple ;
typedef TYPE_6__ ForeignScanState ;
typedef TYPE_7__ EState ;


 int Assert (TYPE_12__*) ;
 int * ExecClearTuple (int *) ;
 int ExecStoreAllNullTuple (int *) ;
 int ExecStoreHeapTuple (int ,int *,int) ;
 int PG_CATCH () ;
 int PG_END_TRY () ;
 int PG_RE_THROW () ;
 int PG_TRY () ;
 int PQclear (scalar_t__) ;
 int * apply_returning_filter (TYPE_5__*,int *,TYPE_7__*) ;
 int make_tuple_from_result_row (scalar_t__,scalar_t__,scalar_t__,int ,int ,TYPE_6__*,int ) ;

__attribute__((used)) static TupleTableSlot *
get_returning_data(ForeignScanState *node)
{
 PgFdwDirectModifyState *dmstate = (PgFdwDirectModifyState *) node->fdw_state;
 EState *estate = node->ss.ps.state;
 ResultRelInfo *resultRelInfo = estate->es_result_relation_info;
 TupleTableSlot *slot = node->ss.ss_ScanTupleSlot;
 TupleTableSlot *resultSlot;

 Assert(resultRelInfo->ri_projectReturning);


 if (dmstate->next_tuple >= dmstate->num_tuples)
  return ExecClearTuple(slot);


 if (dmstate->set_processed)
  estate->es_processed += 1;






 if (!dmstate->has_returning)
 {
  ExecStoreAllNullTuple(slot);
  resultSlot = slot;
 }
 else
 {




  PG_TRY();
  {
   HeapTuple newtup;

   newtup = make_tuple_from_result_row(dmstate->result,
            dmstate->next_tuple,
            dmstate->rel,
            dmstate->attinmeta,
            dmstate->retrieved_attrs,
            node,
            dmstate->temp_cxt);
   ExecStoreHeapTuple(newtup, slot, 0);
  }
  PG_CATCH();
  {
   if (dmstate->result)
    PQclear(dmstate->result);
   PG_RE_THROW();
  }
  PG_END_TRY();


  if (dmstate->rel)
   resultSlot = slot;
  else
   resultSlot = apply_returning_filter(dmstate, slot, estate);
 }
 dmstate->next_tuple++;


 resultRelInfo->ri_projectReturning->pi_exprContext->ecxt_scantuple =
  resultSlot;

 return slot;
}
