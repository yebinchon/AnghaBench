
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int biss_RuntimeKeysReady; int biss_NumScanKeys; int biss_ScanKeys; int biss_ScanDesc; int biss_NumArrayKeys; int biss_ArrayKeys; int biss_NumRuntimeKeys; int biss_RuntimeKeys; int * biss_RuntimeContext; } ;
typedef int ExprContext ;
typedef TYPE_1__ BitmapIndexScanState ;


 int ExecIndexEvalArrayKeys (int *,int ,int ) ;
 int ExecIndexEvalRuntimeKeys (int *,int ,int ) ;
 int ResetExprContext (int *) ;
 int index_rescan (int ,int ,int ,int *,int ) ;

void
ExecReScanBitmapIndexScan(BitmapIndexScanState *node)
{
 ExprContext *econtext = node->biss_RuntimeContext;






 if (econtext)
  ResetExprContext(econtext);
 if (node->biss_NumRuntimeKeys != 0)
  ExecIndexEvalRuntimeKeys(econtext,
         node->biss_RuntimeKeys,
         node->biss_NumRuntimeKeys);
 if (node->biss_NumArrayKeys != 0)
  node->biss_RuntimeKeysReady =
   ExecIndexEvalArrayKeys(econtext,
           node->biss_ArrayKeys,
           node->biss_NumArrayKeys);
 else
  node->biss_RuntimeKeysReady = 1;


 if (node->biss_RuntimeKeysReady)
  index_rescan(node->biss_ScanDesc,
      node->biss_ScanKeys, node->biss_NumScanKeys,
      ((void*)0), 0);
}
