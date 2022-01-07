
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int analyze_only; int report_progress; int estimated_count; int strategy; int num_heap_tuples; int message_level; int index; } ;
struct TYPE_5__ {int num_dead_tuples; int old_live_tuples; } ;
typedef int Relation ;
typedef int PGRUsage ;
typedef TYPE_1__ LVRelStats ;
typedef TYPE_2__ IndexVacuumInfo ;
typedef int IndexBulkDeleteResult ;


 int RelationGetRelationName (int ) ;
 int elevel ;
 int ereport (int ,int ) ;
 int errdetail_internal (char*,int ) ;
 int errmsg (char*,int ,int ) ;
 int * index_bulk_delete (TYPE_2__*,int *,int ,void*) ;
 int lazy_tid_reaped ;
 int pg_rusage_init (int *) ;
 int pg_rusage_show (int *) ;
 int vac_strategy ;

__attribute__((used)) static void
lazy_vacuum_index(Relation indrel,
      IndexBulkDeleteResult **stats,
      LVRelStats *vacrelstats)
{
 IndexVacuumInfo ivinfo;
 PGRUsage ru0;

 pg_rusage_init(&ru0);

 ivinfo.index = indrel;
 ivinfo.analyze_only = 0;
 ivinfo.report_progress = 0;
 ivinfo.estimated_count = 1;
 ivinfo.message_level = elevel;

 ivinfo.num_heap_tuples = vacrelstats->old_live_tuples;
 ivinfo.strategy = vac_strategy;


 *stats = index_bulk_delete(&ivinfo, *stats,
          lazy_tid_reaped, (void *) vacrelstats);

 ereport(elevel,
   (errmsg("scanned index \"%s\" to remove %d row versions",
     RelationGetRelationName(indrel),
     vacrelstats->num_dead_tuples),
    errdetail_internal("%s", pg_rusage_show(&ru0))));
}
