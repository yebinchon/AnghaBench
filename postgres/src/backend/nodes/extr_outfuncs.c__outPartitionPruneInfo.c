
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int PartitionPruneInfo ;


 int WRITE_BITMAPSET_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int other_subplans ;
 int prune_infos ;

__attribute__((used)) static void
_outPartitionPruneInfo(StringInfo str, const PartitionPruneInfo *node)
{
 WRITE_NODE_TYPE("PARTITIONPRUNEINFO");

 WRITE_NODE_FIELD(prune_infos);
 WRITE_BITMAPSET_FIELD(other_subplans);
}
