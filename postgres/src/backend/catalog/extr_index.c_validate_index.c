
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int int64 ;
struct TYPE_18__ {scalar_t__ tups_inserted; scalar_t__ itups; scalar_t__ htups; int tuplesort; } ;
typedef TYPE_2__ ValidateIndexState ;
struct TYPE_21__ {int ii_Concurrent; } ;
struct TYPE_20__ {int analyze_only; int report_progress; int estimated_count; int * strategy; int num_heap_tuples; int message_level; TYPE_3__* index; } ;
struct TYPE_19__ {TYPE_1__* rd_rel; } ;
struct TYPE_17__ {int reltuples; int relowner; } ;
typedef int Snapshot ;
typedef TYPE_3__* Relation ;
typedef int Oid ;
typedef TYPE_4__ IndexVacuumInfo ;
typedef TYPE_5__ IndexInfo ;


 int AtEOXact_GUC (int,int) ;
 TYPE_5__* BuildIndexInfo (TYPE_3__*) ;
 int DEBUG2 ;
 int GetUserIdAndSecContext (int *,int*) ;
 int INT8OID ;
 int Int8LessOperator ;
 int InvalidOid ;
 int NewGUCNestLevel () ;
 int NoLock ;
 int const PROGRESS_CREATEIDX_PHASE ;
 int const PROGRESS_CREATEIDX_PHASE_VALIDATE_IDXSCAN ;
 int const PROGRESS_CREATEIDX_PHASE_VALIDATE_SORT ;
 int PROGRESS_CREATEIDX_PHASE_VALIDATE_TABLESCAN ;
 int const PROGRESS_CREATEIDX_TUPLES_DONE ;
 int const PROGRESS_CREATEIDX_TUPLES_TOTAL ;
 int const PROGRESS_SCAN_BLOCKS_DONE ;
 int const PROGRESS_SCAN_BLOCKS_TOTAL ;
 int RowExclusiveLock ;
 int SECURITY_RESTRICTED_OPERATION ;
 int SetUserIdAndSecContext (int ,int) ;
 int ShareUpdateExclusiveLock ;
 int elog (int ,char*,scalar_t__,scalar_t__,scalar_t__) ;
 int index_bulk_delete (TYPE_4__*,int *,int ,void*) ;
 int index_close (TYPE_3__*,int ) ;
 TYPE_3__* index_open (int ,int ) ;
 int maintenance_work_mem ;
 int pgstat_progress_update_multi_param (int,int const*,int const*) ;
 int pgstat_progress_update_param (int const,int ) ;
 int table_close (TYPE_3__*,int ) ;
 int table_index_validate_scan (TYPE_3__*,TYPE_3__*,TYPE_5__*,int ,TYPE_2__*) ;
 TYPE_3__* table_open (int ,int ) ;
 int tuplesort_begin_datum (int ,int ,int ,int,int ,int *,int) ;
 int tuplesort_end (int ) ;
 int tuplesort_performsort (int ) ;
 int validate_index_callback ;

void
validate_index(Oid heapId, Oid indexId, Snapshot snapshot)
{
 Relation heapRelation,
    indexRelation;
 IndexInfo *indexInfo;
 IndexVacuumInfo ivinfo;
 ValidateIndexState state;
 Oid save_userid;
 int save_sec_context;
 int save_nestlevel;

 {
  const int index[] = {
   PROGRESS_CREATEIDX_PHASE,
   PROGRESS_CREATEIDX_TUPLES_DONE,
   PROGRESS_CREATEIDX_TUPLES_TOTAL,
   PROGRESS_SCAN_BLOCKS_DONE,
   PROGRESS_SCAN_BLOCKS_TOTAL
  };
  const int64 val[] = {
   PROGRESS_CREATEIDX_PHASE_VALIDATE_IDXSCAN,
   0, 0, 0, 0
  };

  pgstat_progress_update_multi_param(5, index, val);
 }


 heapRelation = table_open(heapId, ShareUpdateExclusiveLock);

 indexRelation = index_open(indexId, RowExclusiveLock);






 indexInfo = BuildIndexInfo(indexRelation);


 indexInfo->ii_Concurrent = 1;






 GetUserIdAndSecContext(&save_userid, &save_sec_context);
 SetUserIdAndSecContext(heapRelation->rd_rel->relowner,
         save_sec_context | SECURITY_RESTRICTED_OPERATION);
 save_nestlevel = NewGUCNestLevel();




 ivinfo.index = indexRelation;
 ivinfo.analyze_only = 0;
 ivinfo.report_progress = 1;
 ivinfo.estimated_count = 1;
 ivinfo.message_level = DEBUG2;
 ivinfo.num_heap_tuples = heapRelation->rd_rel->reltuples;
 ivinfo.strategy = ((void*)0);







 state.tuplesort = tuplesort_begin_datum(INT8OID, Int8LessOperator,
           InvalidOid, 0,
           maintenance_work_mem,
           ((void*)0), 0);
 state.htups = state.itups = state.tups_inserted = 0;


 (void) index_bulk_delete(&ivinfo, ((void*)0),
        validate_index_callback, (void *) &state);


 {
  const int index[] = {
   PROGRESS_CREATEIDX_PHASE,
   PROGRESS_SCAN_BLOCKS_DONE,
   PROGRESS_SCAN_BLOCKS_TOTAL
  };
  const int64 val[] = {
   PROGRESS_CREATEIDX_PHASE_VALIDATE_SORT,
   0, 0
  };

  pgstat_progress_update_multi_param(3, index, val);
 }
 tuplesort_performsort(state.tuplesort);




 pgstat_progress_update_param(PROGRESS_CREATEIDX_PHASE,
         PROGRESS_CREATEIDX_PHASE_VALIDATE_TABLESCAN);
 table_index_validate_scan(heapRelation,
         indexRelation,
         indexInfo,
         snapshot,
         &state);


 tuplesort_end(state.tuplesort);

 elog(DEBUG2,
   "validate_index found %.0f heap tuples, %.0f index tuples; inserted %.0f missing tuples",
   state.htups, state.itups, state.tups_inserted);


 AtEOXact_GUC(0, save_nestlevel);


 SetUserIdAndSecContext(save_userid, save_sec_context);


 index_close(indexRelation, NoLock);
 table_close(heapRelation, NoLock);
}
