
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


typedef int TupleTableSlot ;
struct TYPE_20__ {int es_snapshot; int es_direction; } ;
struct TYPE_19__ {int * ecxt_scantuple; } ;
struct TYPE_18__ {int indexorderdir; } ;
struct TYPE_17__ {scalar_t__ xs_recheck; } ;
struct TYPE_14__ {TYPE_6__* ps_ExprContext; scalar_t__ plan; TYPE_7__* state; } ;
struct TYPE_15__ {int ss_currentRelation; int * ss_ScanTupleSlot; TYPE_1__ ps; } ;
struct TYPE_16__ {scalar_t__ iss_NumRuntimeKeys; int iss_ReachedEnd; int indexqualorig; int iss_NumOrderByKeys; int iss_OrderByKeys; int iss_NumScanKeys; int iss_ScanKeys; scalar_t__ iss_RuntimeKeysReady; TYPE_4__* iss_ScanDesc; int iss_RelationDesc; TYPE_2__ ss; } ;
typedef int ScanDirection ;
typedef TYPE_3__ IndexScanState ;
typedef TYPE_4__* IndexScanDesc ;
typedef TYPE_5__ IndexScan ;
typedef TYPE_6__ ExprContext ;
typedef TYPE_7__ EState ;


 int BackwardScanDirection ;
 int CHECK_FOR_INTERRUPTS () ;
 int * ExecClearTuple (int *) ;
 int ExecQualAndReset (int ,TYPE_6__*) ;
 int ForwardScanDirection ;
 int InstrCountFiltered2 (TYPE_3__*,int) ;
 scalar_t__ ScanDirectionIsBackward (int ) ;
 scalar_t__ ScanDirectionIsForward (int ) ;
 TYPE_4__* index_beginscan (int ,int ,int ,int ,int ) ;
 scalar_t__ index_getnext_slot (TYPE_4__*,int ,int *) ;
 int index_rescan (TYPE_4__*,int ,int ,int ,int ) ;

__attribute__((used)) static TupleTableSlot *
IndexNext(IndexScanState *node)
{
 EState *estate;
 ExprContext *econtext;
 ScanDirection direction;
 IndexScanDesc scandesc;
 TupleTableSlot *slot;




 estate = node->ss.ps.state;
 direction = estate->es_direction;

 if (ScanDirectionIsBackward(((IndexScan *) node->ss.ps.plan)->indexorderdir))
 {
  if (ScanDirectionIsForward(direction))
   direction = BackwardScanDirection;
  else if (ScanDirectionIsBackward(direction))
   direction = ForwardScanDirection;
 }
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




 while (index_getnext_slot(scandesc, direction, slot))
 {
  CHECK_FOR_INTERRUPTS();





  if (scandesc->xs_recheck)
  {
   econtext->ecxt_scantuple = slot;
   if (!ExecQualAndReset(node->indexqualorig, econtext))
   {

    InstrCountFiltered2(node, 1);
    continue;
   }
  }

  return slot;
 }





 node->iss_ReachedEnd = 1;
 return ExecClearTuple(slot);
}
