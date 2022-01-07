
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int step_id; } ;
typedef int StringInfo ;
typedef int PartitionPruneStepOp ;


 int WRITE_BITMAPSET_FIELD (int ) ;
 int WRITE_INT_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int cmpfns ;
 int exprs ;
 int nullkeys ;
 int opstrategy ;
 TYPE_1__ step ;

__attribute__((used)) static void
_outPartitionPruneStepOp(StringInfo str, const PartitionPruneStepOp *node)
{
 WRITE_NODE_TYPE("PARTITIONPRUNESTEPOP");

 WRITE_INT_FIELD(step.step_id);
 WRITE_INT_FIELD(opstrategy);
 WRITE_NODE_FIELD(exprs);
 WRITE_NODE_FIELD(cmpfns);
 WRITE_BITMAPSET_FIELD(nullkeys);
}
