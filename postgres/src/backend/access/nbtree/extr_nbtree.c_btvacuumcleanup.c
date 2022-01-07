
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int TransactionId ;
struct TYPE_10__ {scalar_t__ num_index_tuples; } ;
struct TYPE_9__ {scalar_t__ num_heap_tuples; int estimated_count; int index; scalar_t__ analyze_only; } ;
typedef TYPE_1__ IndexVacuumInfo ;
typedef TYPE_2__ IndexBulkDeleteResult ;


 int _bt_update_meta_cleanup_info (int ,int ,scalar_t__) ;
 int _bt_vacuum_needs_cleanup (TYPE_1__*) ;
 int btvacuumscan (TYPE_1__*,TYPE_2__*,int *,int *,int ,int *) ;
 scalar_t__ palloc0 (int) ;

IndexBulkDeleteResult *
btvacuumcleanup(IndexVacuumInfo *info, IndexBulkDeleteResult *stats)
{

 if (info->analyze_only)
  return stats;
 if (stats == ((void*)0))
 {
  TransactionId oldestBtpoXact;


  if (!_bt_vacuum_needs_cleanup(info))
   return ((void*)0);

  stats = (IndexBulkDeleteResult *) palloc0(sizeof(IndexBulkDeleteResult));
  btvacuumscan(info, stats, ((void*)0), ((void*)0), 0, &oldestBtpoXact);


  _bt_update_meta_cleanup_info(info->index, oldestBtpoXact,
          info->num_heap_tuples);
 }







 if (!info->estimated_count)
 {
  if (stats->num_index_tuples > info->num_heap_tuples)
   stats->num_index_tuples = info->num_heap_tuples;
 }

 return stats;
}
