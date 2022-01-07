
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int num_index_tuples; int num_pages; } ;
struct TYPE_6__ {int index; int strategy; scalar_t__ analyze_only; } ;
typedef int Relation ;
typedef TYPE_1__ IndexVacuumInfo ;
typedef TYPE_2__ IndexBulkDeleteResult ;


 int AccessShareLock ;
 int BRIN_ALL_BLOCKRANGES ;
 int IndexGetRelation (int ,int) ;
 int RelationGetNumberOfBlocks (int ) ;
 int RelationGetRelid (int ) ;
 int brin_vacuum_scan (int ,int ) ;
 int brinsummarize (int ,int ,int ,int,int *,int *) ;
 scalar_t__ palloc0 (int) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

IndexBulkDeleteResult *
brinvacuumcleanup(IndexVacuumInfo *info, IndexBulkDeleteResult *stats)
{
 Relation heapRel;


 if (info->analyze_only)
  return stats;

 if (!stats)
  stats = (IndexBulkDeleteResult *) palloc0(sizeof(IndexBulkDeleteResult));
 stats->num_pages = RelationGetNumberOfBlocks(info->index);


 heapRel = table_open(IndexGetRelation(RelationGetRelid(info->index), 0),
       AccessShareLock);

 brin_vacuum_scan(info->index, info->strategy);

 brinsummarize(info->index, heapRel, BRIN_ALL_BLOCKRANGES, 0,
      &stats->num_index_tuples, &stats->num_index_tuples);

 table_close(heapRel, AccessShareLock);

 return stats;
}
