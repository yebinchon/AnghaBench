
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ ps_ResultTupleSlot; } ;
struct TYPE_8__ {int * tstore; scalar_t__ func_slot; } ;
struct TYPE_6__ {scalar_t__ ss_ScanTupleSlot; TYPE_4__ ps; } ;
struct TYPE_7__ {int nfuncs; TYPE_3__* funcstates; TYPE_1__ ss; } ;
typedef TYPE_2__ FunctionScanState ;
typedef TYPE_3__ FunctionScanPerFuncState ;


 int ExecClearTuple (scalar_t__) ;
 int ExecFreeExprContext (TYPE_4__*) ;
 int tuplestore_end (int *) ;

void
ExecEndFunctionScan(FunctionScanState *node)
{
 int i;




 ExecFreeExprContext(&node->ss.ps);




 if (node->ss.ps.ps_ResultTupleSlot)
  ExecClearTuple(node->ss.ps.ps_ResultTupleSlot);
 ExecClearTuple(node->ss.ss_ScanTupleSlot);




 for (i = 0; i < node->nfuncs; i++)
 {
  FunctionScanPerFuncState *fs = &node->funcstates[i];

  if (fs->func_slot)
   ExecClearTuple(fs->func_slot);

  if (fs->tstore != ((void*)0))
  {
   tuplestore_end(node->funcstates[i].tstore);
   fs->tstore = ((void*)0);
  }
 }
}
