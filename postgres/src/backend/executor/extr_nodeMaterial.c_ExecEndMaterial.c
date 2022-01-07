
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ss_ScanTupleSlot; } ;
struct TYPE_6__ {int * tuplestorestate; TYPE_1__ ss; } ;
typedef TYPE_2__ MaterialState ;


 int ExecClearTuple (int ) ;
 int ExecEndNode (int ) ;
 int outerPlanState (TYPE_2__*) ;
 int tuplestore_end (int *) ;

void
ExecEndMaterial(MaterialState *node)
{



 ExecClearTuple(node->ss.ss_ScanTupleSlot);




 if (node->tuplestorestate != ((void*)0))
  tuplestore_end(node->tuplestorestate);
 node->tuplestorestate = ((void*)0);




 ExecEndNode(outerPlanState(node));
}
