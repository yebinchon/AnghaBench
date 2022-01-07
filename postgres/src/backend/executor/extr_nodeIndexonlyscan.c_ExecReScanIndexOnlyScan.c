
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ioss_NumRuntimeKeys; int ioss_RuntimeKeysReady; int ss; int ioss_NumOrderByKeys; int ioss_OrderByKeys; int ioss_NumScanKeys; int ioss_ScanKeys; scalar_t__ ioss_ScanDesc; int ioss_RuntimeKeys; int * ioss_RuntimeContext; } ;
typedef TYPE_1__ IndexOnlyScanState ;
typedef int ExprContext ;


 int ExecIndexEvalRuntimeKeys (int *,int ,scalar_t__) ;
 int ExecScanReScan (int *) ;
 int ResetExprContext (int *) ;
 int index_rescan (scalar_t__,int ,int ,int ,int ) ;

void
ExecReScanIndexOnlyScan(IndexOnlyScanState *node)
{







 if (node->ioss_NumRuntimeKeys != 0)
 {
  ExprContext *econtext = node->ioss_RuntimeContext;

  ResetExprContext(econtext);
  ExecIndexEvalRuntimeKeys(econtext,
         node->ioss_RuntimeKeys,
         node->ioss_NumRuntimeKeys);
 }
 node->ioss_RuntimeKeysReady = 1;


 if (node->ioss_ScanDesc)
  index_rescan(node->ioss_ScanDesc,
      node->ioss_ScanKeys, node->ioss_NumScanKeys,
      node->ioss_OrderByKeys, node->ioss_NumOrderByKeys);

 ExecScanReScan(&node->ss);
}
