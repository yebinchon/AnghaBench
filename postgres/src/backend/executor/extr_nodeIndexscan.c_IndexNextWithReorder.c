
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_8__ ;
typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_28__ {int es_snapshot; int es_direction; } ;
struct TYPE_27__ {int * ecxt_scantuple; } ;
struct TYPE_26__ {int indexorderdir; } ;
struct TYPE_25__ {int* xs_orderbynulls; int * xs_orderbyvals; scalar_t__ xs_recheckorderby; scalar_t__ xs_recheck; } ;
struct TYPE_21__ {TYPE_7__* ps_ExprContext; scalar_t__ plan; TYPE_8__* state; } ;
struct TYPE_22__ {int ss_currentRelation; int * ss_ScanTupleSlot; TYPE_1__ ps; } ;
struct TYPE_24__ {scalar_t__ iss_NumRuntimeKeys; int iss_ReachedEnd; int* iss_OrderByNulls; int * iss_OrderByValues; int indexqualorig; int iss_ReorderQueue; int iss_NumOrderByKeys; int iss_OrderByKeys; int iss_NumScanKeys; int iss_ScanKeys; scalar_t__ iss_RuntimeKeysReady; TYPE_5__* iss_ScanDesc; int iss_RelationDesc; TYPE_2__ ss; } ;
struct TYPE_23__ {int* orderbynulls; int * orderbyvals; } ;
typedef TYPE_3__ ReorderTuple ;
typedef TYPE_4__ IndexScanState ;
typedef TYPE_5__* IndexScanDesc ;
typedef TYPE_6__ IndexScan ;
typedef int HeapTuple ;
typedef TYPE_7__ ExprContext ;
typedef TYPE_8__ EState ;
typedef int Datum ;


 int Assert (int) ;
 int CHECK_FOR_INTERRUPTS () ;
 int ERROR ;
 int EvalOrderByExpressions (TYPE_4__*,TYPE_7__*) ;
 int * ExecClearTuple (int *) ;
 int ExecForceStoreHeapTuple (int ,int *,int) ;
 int ExecQualAndReset (int ,TYPE_7__*) ;
 int ForwardScanDirection ;
 int InstrCountFiltered2 (TYPE_4__*,int) ;
 int ResetExprContext (TYPE_7__*) ;
 int ScanDirectionIsBackward (int ) ;
 int ScanDirectionIsForward (int ) ;
 int cmp_orderbyvals (int *,int*,int *,int*,TYPE_4__*) ;
 int elog (int ,char*) ;
 TYPE_5__* index_beginscan (int ,int ,int ,int ,int ) ;
 int index_getnext_slot (TYPE_5__*,int ,int *) ;
 int index_rescan (TYPE_5__*,int ,int ,int ,int ) ;
 scalar_t__ pairingheap_first (int ) ;
 int pairingheap_is_empty (int ) ;
 int reorderqueue_pop (TYPE_4__*) ;
 int reorderqueue_push (TYPE_4__*,int *,int *,int*) ;

__attribute__((used)) static TupleTableSlot *
IndexNextWithReorder(IndexScanState *node)
{
 EState *estate;
 ExprContext *econtext;
 IndexScanDesc scandesc;
 TupleTableSlot *slot;
 ReorderTuple *topmost = ((void*)0);
 bool was_exact;
 Datum *lastfetched_vals;
 bool *lastfetched_nulls;
 int cmp;

 estate = node->ss.ps.state;
 Assert(!ScanDirectionIsBackward(((IndexScan *) node->ss.ps.plan)->indexorderdir));
 Assert(ScanDirectionIsForward(estate->es_direction));

 scandesc = node->iss_ScanDesc;
 econtext = node->ss.ps.ps_ExprContext;
 slot = node->ss.ss_ScanTupleSlot;

 if (scandesc == ((void*)0))
 {




  scandesc = index_beginscan(node->ss.ss_currentRelation,
           node->iss_RelationDesc,
           estate->es_snapshot,
           node->iss_NumScanKeys,
           node->iss_NumOrderByKeys);

  node->iss_ScanDesc = scandesc;





  if (node->iss_NumRuntimeKeys == 0 || node->iss_RuntimeKeysReady)
   index_rescan(scandesc,
       node->iss_ScanKeys, node->iss_NumScanKeys,
       node->iss_OrderByKeys, node->iss_NumOrderByKeys);
 }

 for (;;)
 {
  CHECK_FOR_INTERRUPTS();






  if (!pairingheap_is_empty(node->iss_ReorderQueue))
  {
   topmost = (ReorderTuple *) pairingheap_first(node->iss_ReorderQueue);

   if (node->iss_ReachedEnd ||
    cmp_orderbyvals(topmost->orderbyvals,
        topmost->orderbynulls,
        scandesc->xs_orderbyvals,
        scandesc->xs_orderbynulls,
        node) <= 0)
   {
    HeapTuple tuple;

    tuple = reorderqueue_pop(node);


    ExecForceStoreHeapTuple(tuple, slot, 1);
    return slot;
   }
  }
  else if (node->iss_ReachedEnd)
  {

   return ExecClearTuple(slot);
  }




next_indextuple:
  if (!index_getnext_slot(scandesc, ForwardScanDirection, slot))
  {




   node->iss_ReachedEnd = 1;
   continue;
  }





  if (scandesc->xs_recheck)
  {
   econtext->ecxt_scantuple = slot;
   if (!ExecQualAndReset(node->indexqualorig, econtext))
   {

    InstrCountFiltered2(node, 1);

    CHECK_FOR_INTERRUPTS();
    goto next_indextuple;
   }
  }

  if (scandesc->xs_recheckorderby)
  {
   econtext->ecxt_scantuple = slot;
   ResetExprContext(econtext);
   EvalOrderByExpressions(node, econtext);
   cmp = cmp_orderbyvals(node->iss_OrderByValues,
          node->iss_OrderByNulls,
          scandesc->xs_orderbyvals,
          scandesc->xs_orderbynulls,
          node);
   if (cmp < 0)
    elog(ERROR, "index returned tuples in wrong order");
   else if (cmp == 0)
    was_exact = 1;
   else
    was_exact = 0;
   lastfetched_vals = node->iss_OrderByValues;
   lastfetched_nulls = node->iss_OrderByNulls;
  }
  else
  {
   was_exact = 1;
   lastfetched_vals = scandesc->xs_orderbyvals;
   lastfetched_nulls = scandesc->xs_orderbynulls;
  }
  if (!was_exact || (topmost && cmp_orderbyvals(lastfetched_vals,
               lastfetched_nulls,
               topmost->orderbyvals,
               topmost->orderbynulls,
               node) > 0))
  {

   reorderqueue_push(node, slot, lastfetched_vals, lastfetched_nulls);
   continue;
  }
  else
  {

   return slot;
  }
 }





 return ExecClearTuple(slot);
}
