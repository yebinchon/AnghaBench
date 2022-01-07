
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ ps_ResultTupleSlot; } ;
struct TYPE_7__ {TYPE_1__ ps; } ;
struct TYPE_6__ {int curr_idx; TYPE_3__ ss; } ;
typedef TYPE_2__ ValuesScanState ;


 int ExecClearTuple (scalar_t__) ;
 int ExecScanReScan (TYPE_3__*) ;

void
ExecReScanValuesScan(ValuesScanState *node)
{
 if (node->ss.ps.ps_ResultTupleSlot)
  ExecClearTuple(node->ss.ps.ps_ResultTupleSlot);

 ExecScanReScan(&node->ss);

 node->curr_idx = -1;
}
