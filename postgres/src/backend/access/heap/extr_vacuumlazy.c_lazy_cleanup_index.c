
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int pages_free; int pages_deleted; int tuples_removed; int num_pages; int num_index_tuples; int estimated_count; } ;
struct TYPE_11__ {int analyze_only; int report_progress; int estimated_count; int strategy; int num_heap_tuples; int message_level; int index; } ;
struct TYPE_10__ {scalar_t__ tupcount_pages; scalar_t__ rel_pages; int new_rel_tuples; } ;
typedef int Relation ;
typedef int PGRUsage ;
typedef TYPE_1__ LVRelStats ;
typedef TYPE_2__ IndexVacuumInfo ;
typedef TYPE_3__ IndexBulkDeleteResult ;


 int InvalidMultiXactId ;
 int InvalidTransactionId ;
 int RelationGetRelationName (int ) ;
 int elevel ;
 int ereport (int ,int ) ;
 int errdetail (char*,int ,int ,int ,int ) ;
 int errmsg (char*,int ,int ,int ) ;
 TYPE_3__* index_vacuum_cleanup (TYPE_2__*,TYPE_3__*) ;
 int pfree (TYPE_3__*) ;
 int pg_rusage_init (int *) ;
 int pg_rusage_show (int *) ;
 int vac_strategy ;
 int vac_update_relstats (int ,int ,int ,int ,int,int ,int ,int) ;

__attribute__((used)) static void
lazy_cleanup_index(Relation indrel,
       IndexBulkDeleteResult *stats,
       LVRelStats *vacrelstats)
{
 IndexVacuumInfo ivinfo;
 PGRUsage ru0;

 pg_rusage_init(&ru0);

 ivinfo.index = indrel;
 ivinfo.analyze_only = 0;
 ivinfo.report_progress = 0;
 ivinfo.estimated_count = (vacrelstats->tupcount_pages < vacrelstats->rel_pages);
 ivinfo.message_level = elevel;






 ivinfo.num_heap_tuples = vacrelstats->new_rel_tuples;
 ivinfo.strategy = vac_strategy;

 stats = index_vacuum_cleanup(&ivinfo, stats);

 if (!stats)
  return;





 if (!stats->estimated_count)
  vac_update_relstats(indrel,
       stats->num_pages,
       stats->num_index_tuples,
       0,
       0,
       InvalidTransactionId,
       InvalidMultiXactId,
       0);

 ereport(elevel,
   (errmsg("index \"%s\" now contains %.0f row versions in %u pages",
     RelationGetRelationName(indrel),
     stats->num_index_tuples,
     stats->num_pages),
    errdetail("%.0f index row versions were removed.\n"
        "%u index pages have been deleted, %u are currently reusable.\n"
        "%s.",
        stats->tuples_removed,
        stats->pages_deleted, stats->pages_free,
        pg_rusage_show(&ru0))));

 pfree(stats);
}
