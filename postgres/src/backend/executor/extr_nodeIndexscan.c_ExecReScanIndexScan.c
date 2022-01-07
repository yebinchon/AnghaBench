
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ iss_NumRuntimeKeys; int iss_RuntimeKeysReady; int iss_ReachedEnd; int ss; int iss_NumOrderByKeys; int iss_OrderByKeys; int iss_NumScanKeys; int iss_ScanKeys; scalar_t__ iss_ScanDesc; scalar_t__ iss_ReorderQueue; int iss_RuntimeKeys; int * iss_RuntimeContext; } ;
typedef TYPE_1__ IndexScanState ;
typedef int ExprContext ;


 int ExecIndexEvalRuntimeKeys (int *,int ,scalar_t__) ;
 int ExecScanReScan (int *) ;
 int ResetExprContext (int *) ;
 int index_rescan (scalar_t__,int ,int ,int ,int ) ;
 int pairingheap_is_empty (scalar_t__) ;
 int reorderqueue_pop (TYPE_1__*) ;

void
ExecReScanIndexScan(IndexScanState *node)
{







 if (node->iss_NumRuntimeKeys != 0)
 {
  ExprContext *econtext = node->iss_RuntimeContext;

  ResetExprContext(econtext);
  ExecIndexEvalRuntimeKeys(econtext,
         node->iss_RuntimeKeys,
         node->iss_NumRuntimeKeys);
 }
 node->iss_RuntimeKeysReady = 1;


 if (node->iss_ReorderQueue)
 {
  while (!pairingheap_is_empty(node->iss_ReorderQueue))
   reorderqueue_pop(node);
 }


 if (node->iss_ScanDesc)
  index_rescan(node->iss_ScanDesc,
      node->iss_ScanKeys, node->iss_NumScanKeys,
      node->iss_OrderByKeys, node->iss_NumOrderByKeys);
 node->iss_ReachedEnd = 0;

 ExecScanReScan(&node->ss);
}
