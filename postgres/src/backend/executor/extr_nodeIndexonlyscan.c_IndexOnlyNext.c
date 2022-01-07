
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_34__ TYPE_9__ ;
typedef struct TYPE_33__ TYPE_8__ ;
typedef struct TYPE_32__ TYPE_7__ ;
typedef struct TYPE_31__ TYPE_6__ ;
typedef struct TYPE_30__ TYPE_5__ ;
typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;
typedef struct TYPE_25__ TYPE_10__ ;


struct TYPE_30__ {TYPE_3__* tts_tupleDescriptor; } ;
typedef TYPE_5__ TupleTableSlot ;
struct TYPE_34__ {TYPE_5__* ecxt_scantuple; } ;
struct TYPE_33__ {int indexorderdir; } ;
struct TYPE_26__ {TYPE_9__* ps_ExprContext; scalar_t__ plan; TYPE_10__* state; } ;
struct TYPE_27__ {int ss_currentRelation; TYPE_5__* ss_ScanTupleSlot; TYPE_1__ ps; } ;
struct TYPE_32__ {scalar_t__ ioss_NumRuntimeKeys; int indexqual; TYPE_5__* ioss_TableSlot; int ioss_VMBuffer; int ioss_NumOrderByKeys; int ioss_OrderByKeys; int ioss_NumScanKeys; int ioss_ScanKeys; scalar_t__ ioss_RuntimeKeysReady; TYPE_6__* ioss_ScanDesc; int ioss_RelationDesc; TYPE_2__ ss; } ;
struct TYPE_31__ {int xs_want_itup; scalar_t__ numberOfOrderBys; int heapRelation; scalar_t__ xs_recheckorderby; scalar_t__ xs_recheck; int xs_itupdesc; scalar_t__ xs_itup; scalar_t__ xs_hitup; TYPE_4__* xs_hitupdesc; scalar_t__ xs_heap_continue; } ;
struct TYPE_29__ {scalar_t__ natts; } ;
struct TYPE_28__ {scalar_t__ natts; } ;
struct TYPE_25__ {int es_snapshot; int es_direction; } ;
typedef int ScanDirection ;
typedef int * ItemPointer ;
typedef TYPE_6__* IndexScanDesc ;
typedef TYPE_7__ IndexOnlyScanState ;
typedef TYPE_8__ IndexOnlyScan ;
typedef TYPE_9__ ExprContext ;
typedef TYPE_10__ EState ;


 int Assert (int) ;
 int BackwardScanDirection ;
 int CHECK_FOR_INTERRUPTS () ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 TYPE_5__* ExecClearTuple (TYPE_5__*) ;
 int ExecForceStoreHeapTuple (scalar_t__,TYPE_5__*,int) ;
 int ExecQualAndReset (int ,TYPE_9__*) ;
 int ForwardScanDirection ;
 int InstrCountFiltered2 (TYPE_7__*,int) ;
 int InstrCountTuples2 (TYPE_7__*,int) ;
 int InvalidBuffer ;
 int ItemPointerGetBlockNumber (int *) ;
 int PredicateLockPage (int ,int ,int ) ;
 scalar_t__ ScanDirectionIsBackward (int ) ;
 scalar_t__ ScanDirectionIsForward (int ) ;
 int StoreIndexTuple (TYPE_5__*,scalar_t__,int ) ;
 int VM_ALL_VISIBLE (int ,int ,int *) ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 TYPE_6__* index_beginscan (int ,int ,int ,int ,int ) ;
 int index_fetch_heap (TYPE_6__*,TYPE_5__*) ;
 int * index_getnext_tid (TYPE_6__*,int ) ;
 int index_rescan (TYPE_6__*,int ,int ,int ,int ) ;

__attribute__((used)) static TupleTableSlot *
IndexOnlyNext(IndexOnlyScanState *node)
{
 EState *estate;
 ExprContext *econtext;
 ScanDirection direction;
 IndexScanDesc scandesc;
 TupleTableSlot *slot;
 ItemPointer tid;




 estate = node->ss.ps.state;
 direction = estate->es_direction;

 if (ScanDirectionIsBackward(((IndexOnlyScan *) node->ss.ps.plan)->indexorderdir))
 {
  if (ScanDirectionIsForward(direction))
   direction = BackwardScanDirection;
  else if (ScanDirectionIsBackward(direction))
   direction = ForwardScanDirection;
 }
 scandesc = node->ioss_ScanDesc;
 econtext = node->ss.ps.ps_ExprContext;
 slot = node->ss.ss_ScanTupleSlot;

 if (scandesc == ((void*)0))
 {





  scandesc = index_beginscan(node->ss.ss_currentRelation,
           node->ioss_RelationDesc,
           estate->es_snapshot,
           node->ioss_NumScanKeys,
           node->ioss_NumOrderByKeys);

  node->ioss_ScanDesc = scandesc;



  node->ioss_ScanDesc->xs_want_itup = 1;
  node->ioss_VMBuffer = InvalidBuffer;





  if (node->ioss_NumRuntimeKeys == 0 || node->ioss_RuntimeKeysReady)
   index_rescan(scandesc,
       node->ioss_ScanKeys,
       node->ioss_NumScanKeys,
       node->ioss_OrderByKeys,
       node->ioss_NumOrderByKeys);
 }




 while ((tid = index_getnext_tid(scandesc, direction)) != ((void*)0))
 {
  bool tuple_from_heap = 0;

  CHECK_FOR_INTERRUPTS();
  if (!VM_ALL_VISIBLE(scandesc->heapRelation,
       ItemPointerGetBlockNumber(tid),
       &node->ioss_VMBuffer))
  {



   InstrCountTuples2(node, 1);
   if (!index_fetch_heap(scandesc, node->ioss_TableSlot))
    continue;

   ExecClearTuple(node->ioss_TableSlot);







   if (scandesc->xs_heap_continue)
    elog(ERROR, "non-MVCC snapshots are not supported in index-only scans");
   tuple_from_heap = 1;
  }







  if (scandesc->xs_hitup)
  {





   Assert(slot->tts_tupleDescriptor->natts ==
       scandesc->xs_hitupdesc->natts);
   ExecForceStoreHeapTuple(scandesc->xs_hitup, slot, 0);
  }
  else if (scandesc->xs_itup)
   StoreIndexTuple(slot, scandesc->xs_itup, scandesc->xs_itupdesc);
  else
   elog(ERROR, "no data returned for index-only scan");






  if (scandesc->xs_recheck)
  {
   econtext->ecxt_scantuple = slot;
   if (!ExecQualAndReset(node->indexqual, econtext))
   {

    InstrCountFiltered2(node, 1);
    continue;
   }
  }
  if (scandesc->numberOfOrderBys > 0 && scandesc->xs_recheckorderby)
   ereport(ERROR,
     (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
      errmsg("lossy distance functions are not supported in index-only scans")));





  if (!tuple_from_heap)
   PredicateLockPage(scandesc->heapRelation,
         ItemPointerGetBlockNumber(tid),
         estate->es_snapshot);

  return slot;
 }





 return ExecClearTuple(slot);
}
