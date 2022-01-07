
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ isshared; } ;
struct TYPE_8__ {scalar_t__ instrument; TYPE_1__* state; scalar_t__ plan; } ;
struct TYPE_9__ {TYPE_2__ ps; } ;
struct TYPE_10__ {int biss_RuntimeKeysReady; scalar_t__ biss_NumRuntimeKeys; scalar_t__ biss_NumArrayKeys; TYPE_3__ ss; int biss_NumScanKeys; int biss_ScanKeys; int biss_ScanDesc; int biss_ArrayKeys; int * biss_result; } ;
struct TYPE_7__ {int * es_query_dsa; } ;
typedef int TIDBitmap ;
typedef int PlanState ;
typedef int Node ;
typedef int IndexScanDesc ;
typedef TYPE_4__ BitmapIndexScanState ;
typedef TYPE_5__ BitmapIndexScan ;


 int CHECK_FOR_INTERRUPTS () ;
 int ExecIndexAdvanceArrayKeys (int ,scalar_t__) ;
 int ExecReScan (int *) ;
 int InstrStartNode (scalar_t__) ;
 int InstrStopNode (scalar_t__,double) ;
 scalar_t__ index_getbitmap (int ,int *) ;
 int index_rescan (int ,int ,int ,int *,int ) ;
 int * tbm_create (long,int *) ;
 long work_mem ;

Node *
MultiExecBitmapIndexScan(BitmapIndexScanState *node)
{
 TIDBitmap *tbm;
 IndexScanDesc scandesc;
 double nTuples = 0;
 bool doscan;


 if (node->ss.ps.instrument)
  InstrStartNode(node->ss.ps.instrument);




 scandesc = node->biss_ScanDesc;







 if (!node->biss_RuntimeKeysReady &&
  (node->biss_NumRuntimeKeys != 0 || node->biss_NumArrayKeys != 0))
 {
  ExecReScan((PlanState *) node);
  doscan = node->biss_RuntimeKeysReady;
 }
 else
  doscan = 1;







 if (node->biss_result)
 {
  tbm = node->biss_result;
  node->biss_result = ((void*)0);
 }
 else
 {

  tbm = tbm_create(work_mem * 1024L,
       ((BitmapIndexScan *) node->ss.ps.plan)->isshared ?
       node->ss.ps.state->es_query_dsa : ((void*)0));
 }




 while (doscan)
 {
  nTuples += (double) index_getbitmap(scandesc, tbm);

  CHECK_FOR_INTERRUPTS();

  doscan = ExecIndexAdvanceArrayKeys(node->biss_ArrayKeys,
             node->biss_NumArrayKeys);
  if (doscan)
   index_rescan(node->biss_ScanDesc,
       node->biss_ScanKeys, node->biss_NumScanKeys,
       ((void*)0), 0);
 }


 if (node->ss.ps.instrument)
  InstrStopNode(node->ss.ps.instrument, nTuples);

 return (Node *) tbm;
}
