
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ ps_ResultTupleSlot; int * chgParam; } ;
struct TYPE_7__ {TYPE_1__ ps; } ;
struct TYPE_6__ {int * tupstore; TYPE_3__ ss; } ;
typedef TYPE_2__ TableFuncScanState ;
typedef int Bitmapset ;


 int ExecClearTuple (scalar_t__) ;
 int ExecScanReScan (TYPE_3__*) ;
 int tuplestore_end (int *) ;
 int tuplestore_rescan (int *) ;

void
ExecReScanTableFuncScan(TableFuncScanState *node)
{
 Bitmapset *chgparam = node->ss.ps.chgParam;

 if (node->ss.ps.ps_ResultTupleSlot)
  ExecClearTuple(node->ss.ps.ps_ResultTupleSlot);
 ExecScanReScan(&node->ss);




 if (chgparam)
 {
  if (node->tupstore != ((void*)0))
  {
   tuplestore_end(node->tupstore);
   node->tupstore = ((void*)0);
  }
 }

 if (node->tupstore != ((void*)0))
  tuplestore_rescan(node->tupstore);
}
