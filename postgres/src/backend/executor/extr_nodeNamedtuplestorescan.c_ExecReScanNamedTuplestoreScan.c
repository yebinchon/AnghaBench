
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int Tuplestorestate ;
struct TYPE_5__ {scalar_t__ ps_ResultTupleSlot; } ;
struct TYPE_7__ {TYPE_1__ ps; } ;
struct TYPE_6__ {int readptr; TYPE_3__ ss; int * relation; } ;
typedef TYPE_2__ NamedTuplestoreScanState ;


 int ExecClearTuple (scalar_t__) ;
 int ExecScanReScan (TYPE_3__*) ;
 int tuplestore_rescan (int *) ;
 int tuplestore_select_read_pointer (int *,int ) ;

void
ExecReScanNamedTuplestoreScan(NamedTuplestoreScanState *node)
{
 Tuplestorestate *tuplestorestate = node->relation;

 if (node->ss.ps.ps_ResultTupleSlot)
  ExecClearTuple(node->ss.ps.ps_ResultTupleSlot);

 ExecScanReScan(&node->ss);




 tuplestore_select_read_pointer(tuplestorestate, node->readptr);
 tuplestore_rescan(tuplestorestate);
}
