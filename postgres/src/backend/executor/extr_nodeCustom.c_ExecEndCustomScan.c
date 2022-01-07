
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int ps_ResultTupleSlot; } ;
struct TYPE_8__ {int ss_ScanTupleSlot; TYPE_5__ ps; } ;
struct TYPE_9__ {TYPE_2__ ss; TYPE_1__* methods; } ;
struct TYPE_7__ {int (* EndCustomScan ) (TYPE_3__*) ;} ;
typedef TYPE_3__ CustomScanState ;


 int Assert (int ) ;
 int ExecClearTuple (int ) ;
 int ExecFreeExprContext (TYPE_5__*) ;
 int stub1 (TYPE_3__*) ;

void
ExecEndCustomScan(CustomScanState *node)
{
 Assert(node->methods->EndCustomScan != ((void*)0));
 node->methods->EndCustomScan(node);


 ExecFreeExprContext(&node->ss.ps);


 ExecClearTuple(node->ss.ps.ps_ResultTupleSlot);
 ExecClearTuple(node->ss.ss_ScanTupleSlot);
}
