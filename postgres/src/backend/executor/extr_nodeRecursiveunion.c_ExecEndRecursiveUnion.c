
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ tableContext; scalar_t__ tempContext; int intermediate_table; int working_table; } ;
typedef TYPE_1__ RecursiveUnionState ;


 int ExecEndNode (int ) ;
 int MemoryContextDelete (scalar_t__) ;
 int innerPlanState (TYPE_1__*) ;
 int outerPlanState (TYPE_1__*) ;
 int tuplestore_end (int ) ;

void
ExecEndRecursiveUnion(RecursiveUnionState *node)
{

 tuplestore_end(node->working_table);
 tuplestore_end(node->intermediate_table);


 if (node->tempContext)
  MemoryContextDelete(node->tempContext);
 if (node->tableContext)
  MemoryContextDelete(node->tableContext);




 ExecEndNode(outerPlanState(node));
 ExecEndNode(innerPlanState(node));
}
