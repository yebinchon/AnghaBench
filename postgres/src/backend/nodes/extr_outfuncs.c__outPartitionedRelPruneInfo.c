
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nparts; } ;
typedef int StringInfo ;
typedef TYPE_1__ PartitionedRelPruneInfo ;


 int WRITE_BITMAPSET_FIELD (int ) ;
 int WRITE_INT_ARRAY (int ,int ) ;
 int WRITE_INT_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_OID_ARRAY (int ,int ) ;
 int WRITE_UINT_FIELD (int ) ;
 int exec_pruning_steps ;
 int execparamids ;
 int initial_pruning_steps ;
 int nparts ;
 int present_parts ;
 int relid_map ;
 int rtindex ;
 int subpart_map ;
 int subplan_map ;

__attribute__((used)) static void
_outPartitionedRelPruneInfo(StringInfo str, const PartitionedRelPruneInfo *node)
{
 WRITE_NODE_TYPE("PARTITIONEDRELPRUNEINFO");

 WRITE_UINT_FIELD(rtindex);
 WRITE_BITMAPSET_FIELD(present_parts);
 WRITE_INT_FIELD(nparts);
 WRITE_INT_ARRAY(subplan_map, node->nparts);
 WRITE_INT_ARRAY(subpart_map, node->nparts);
 WRITE_OID_ARRAY(relid_map, node->nparts);
 WRITE_NODE_FIELD(initial_pruning_steps);
 WRITE_NODE_FIELD(exec_pruning_steps);
 WRITE_BITMAPSET_FIELD(execparamids);
}
