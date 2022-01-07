
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ ps_ResultTupleSlot; } ;
struct TYPE_9__ {TYPE_1__ ps; } ;
struct TYPE_8__ {TYPE_2__* rustate; TYPE_4__ ss; } ;
typedef TYPE_3__ WorkTableScanState ;
struct TYPE_7__ {int working_table; } ;


 int ExecClearTuple (scalar_t__) ;
 int ExecScanReScan (TYPE_4__*) ;
 int tuplestore_rescan (int ) ;

void
ExecReScanWorkTableScan(WorkTableScanState *node)
{
 if (node->ss.ps.ps_ResultTupleSlot)
  ExecClearTuple(node->ss.ps.ps_ResultTupleSlot);

 ExecScanReScan(&node->ss);


 if (node->rustate)
  tuplestore_rescan(node->rustate->working_table);
}
