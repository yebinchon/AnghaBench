
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int Tuplestorestate ;
struct TYPE_9__ {scalar_t__ ps_ResultTupleSlot; } ;
struct TYPE_11__ {TYPE_3__ ps; } ;
struct TYPE_10__ {int readptr; TYPE_2__* leader; TYPE_5__ ss; } ;
struct TYPE_8__ {int eof_cte; TYPE_1__* cteplanstate; int * cte_table; } ;
struct TYPE_7__ {int * chgParam; } ;
typedef TYPE_4__ CteScanState ;


 int ExecClearTuple (scalar_t__) ;
 int ExecScanReScan (TYPE_5__*) ;
 int tuplestore_clear (int *) ;
 int tuplestore_rescan (int *) ;
 int tuplestore_select_read_pointer (int *,int ) ;

void
ExecReScanCteScan(CteScanState *node)
{
 Tuplestorestate *tuplestorestate = node->leader->cte_table;

 if (node->ss.ps.ps_ResultTupleSlot)
  ExecClearTuple(node->ss.ps.ps_ResultTupleSlot);

 ExecScanReScan(&node->ss);
 if (node->leader->cteplanstate->chgParam != ((void*)0))
 {
  tuplestore_clear(tuplestorestate);
  node->leader->eof_cte = 0;
 }
 else
 {





  tuplestore_select_read_pointer(tuplestorestate, node->readptr);
  tuplestore_rescan(tuplestorestate);
 }
}
