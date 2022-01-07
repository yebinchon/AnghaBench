
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int step_id; } ;
typedef int StringInfo ;
typedef int PartitionPruneStepCombine ;


 int PartitionPruneCombineOp ;
 int WRITE_ENUM_FIELD (int ,int ) ;
 int WRITE_INT_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int combineOp ;
 int source_stepids ;
 TYPE_1__ step ;

__attribute__((used)) static void
_outPartitionPruneStepCombine(StringInfo str, const PartitionPruneStepCombine *node)
{
 WRITE_NODE_TYPE("PARTITIONPRUNESTEPCOMBINE");

 WRITE_INT_FIELD(step.step_id);
 WRITE_ENUM_FIELD(combineOp, PartitionPruneCombineOp);
 WRITE_NODE_FIELD(source_stepids);
}
