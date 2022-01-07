
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int * callback_state; int callback; TYPE_3__* stats; TYPE_2__* info; } ;
typedef TYPE_1__ spgBulkDeleteState ;
struct TYPE_10__ {scalar_t__ num_index_tuples; } ;
struct TYPE_9__ {scalar_t__ num_heap_tuples; int estimated_count; scalar_t__ analyze_only; } ;
typedef TYPE_2__ IndexVacuumInfo ;
typedef TYPE_3__ IndexBulkDeleteResult ;


 int dummy_callback ;
 scalar_t__ palloc0 (int) ;
 int spgvacuumscan (TYPE_1__*) ;

IndexBulkDeleteResult *
spgvacuumcleanup(IndexVacuumInfo *info, IndexBulkDeleteResult *stats)
{
 spgBulkDeleteState bds;


 if (info->analyze_only)
  return stats;







 if (stats == ((void*)0))
 {
  stats = (IndexBulkDeleteResult *) palloc0(sizeof(IndexBulkDeleteResult));
  bds.info = info;
  bds.stats = stats;
  bds.callback = dummy_callback;
  bds.callback_state = ((void*)0);

  spgvacuumscan(&bds);
 }







 if (!info->estimated_count)
 {
  if (stats->num_index_tuples > info->num_heap_tuples)
   stats->num_index_tuples = info->num_heap_tuples;
 }

 return stats;
}
