
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ num_index_tuples; } ;
struct TYPE_12__ {TYPE_1__ stats; int * empty_leaf_set; int * internal_page_set; int * page_set_context; } ;
struct TYPE_11__ {scalar_t__ num_heap_tuples; int estimated_count; scalar_t__ analyze_only; } ;
typedef TYPE_2__ IndexVacuumInfo ;
typedef int IndexBulkDeleteResult ;
typedef TYPE_3__ GistBulkDeleteResult ;


 int MemoryContextDelete (int *) ;
 TYPE_3__* create_GistBulkDeleteResult () ;
 int gistvacuum_delete_empty_pages (TYPE_2__*,TYPE_3__*) ;
 int gistvacuumscan (TYPE_2__*,TYPE_3__*,int *,int *) ;

IndexBulkDeleteResult *
gistvacuumcleanup(IndexVacuumInfo *info, IndexBulkDeleteResult *stats)
{
 GistBulkDeleteResult *gist_stats = (GistBulkDeleteResult *) stats;


 if (info->analyze_only)
  return stats;






 if (gist_stats == ((void*)0))
 {
  gist_stats = create_GistBulkDeleteResult();
  gistvacuumscan(info, gist_stats, ((void*)0), ((void*)0));
 }





 gistvacuum_delete_empty_pages(info, gist_stats);


 MemoryContextDelete(gist_stats->page_set_context);
 gist_stats->page_set_context = ((void*)0);
 gist_stats->internal_page_set = ((void*)0);
 gist_stats->empty_leaf_set = ((void*)0);







 if (!info->estimated_count)
 {
  if (gist_stats->stats.num_index_tuples > info->num_heap_tuples)
   gist_stats->stats.num_index_tuples = info->num_heap_tuples;
 }

 return (IndexBulkDeleteResult *) gist_stats;
}
