
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int int64 ;
struct TYPE_17__ {int isunique; TYPE_4__* spool2; int havedead; int const indtuples; TYPE_1__* btleader; TYPE_4__* spool; } ;
struct TYPE_16__ {int isunique; void* sortstate; void* index; void* heap; } ;
struct TYPE_15__ {int ii_Unique; scalar_t__ ii_ParallelWorkers; int ii_BrokenHotChain; int ii_Concurrent; } ;
struct TYPE_14__ {int isWorker; int sharedsort; int nParticipants; } ;
struct TYPE_13__ {int sharedsort2; int nparticipanttuplesorts; int sharedsort; } ;
typedef int SortCoordinateData ;
typedef TYPE_2__* SortCoordinate ;
typedef void* Relation ;
typedef TYPE_3__ IndexInfo ;
typedef TYPE_4__ BTSpool ;
typedef TYPE_5__ BTBuildState ;


 int PROGRESS_BTREE_PHASE_INDEXBUILD_TABLESCAN ;
 int PROGRESS_CREATEIDX_SUBPHASE ;
 int const PROGRESS_CREATEIDX_TUPLES_TOTAL ;
 int const PROGRESS_SCAN_BLOCKS_DONE ;
 int const PROGRESS_SCAN_BLOCKS_TOTAL ;
 int _bt_begin_parallel (TYPE_5__*,int ,scalar_t__) ;
 int _bt_build_callback ;
 double _bt_parallel_heapscan (TYPE_5__*,int *) ;
 int _bt_spooldestroy (TYPE_4__*) ;
 int maintenance_work_mem ;
 scalar_t__ palloc0 (int) ;
 int pgstat_progress_update_multi_param (int,int const*,int const*) ;
 int pgstat_progress_update_param (int ,int ) ;
 double table_index_build_scan (void*,void*,TYPE_3__*,int,int,int ,void*,int *) ;
 void* tuplesort_begin_index_btree (void*,void*,int,int ,TYPE_2__*,int) ;
 int work_mem ;

__attribute__((used)) static double
_bt_spools_heapscan(Relation heap, Relation index, BTBuildState *buildstate,
     IndexInfo *indexInfo)
{
 BTSpool *btspool = (BTSpool *) palloc0(sizeof(BTSpool));
 SortCoordinate coordinate = ((void*)0);
 double reltuples = 0;







 btspool->heap = heap;
 btspool->index = index;
 btspool->isunique = indexInfo->ii_Unique;


 buildstate->spool = btspool;


 pgstat_progress_update_param(PROGRESS_CREATEIDX_SUBPHASE,
         PROGRESS_BTREE_PHASE_INDEXBUILD_TABLESCAN);


 if (indexInfo->ii_ParallelWorkers > 0)
  _bt_begin_parallel(buildstate, indexInfo->ii_Concurrent,
         indexInfo->ii_ParallelWorkers);





 if (buildstate->btleader)
 {
  coordinate = (SortCoordinate) palloc0(sizeof(SortCoordinateData));
  coordinate->isWorker = 0;
  coordinate->nParticipants =
   buildstate->btleader->nparticipanttuplesorts;
  coordinate->sharedsort = buildstate->btleader->sharedsort;
 }
 buildstate->spool->sortstate =
  tuplesort_begin_index_btree(heap, index, buildstate->isunique,
         maintenance_work_mem, coordinate,
         0);






 if (indexInfo->ii_Unique)
 {
  BTSpool *btspool2 = (BTSpool *) palloc0(sizeof(BTSpool));
  SortCoordinate coordinate2 = ((void*)0);


  btspool2->heap = heap;
  btspool2->index = index;
  btspool2->isunique = 0;

  buildstate->spool2 = btspool2;

  if (buildstate->btleader)
  {





   coordinate2 = (SortCoordinate) palloc0(sizeof(SortCoordinateData));
   coordinate2->isWorker = 0;
   coordinate2->nParticipants =
    buildstate->btleader->nparticipanttuplesorts;
   coordinate2->sharedsort = buildstate->btleader->sharedsort2;
  }





  buildstate->spool2->sortstate =
   tuplesort_begin_index_btree(heap, index, 0, work_mem,
          coordinate2, 0);
 }


 if (!buildstate->btleader)
  reltuples = table_index_build_scan(heap, index, indexInfo, 1, 1,
             _bt_build_callback, (void *) buildstate,
             ((void*)0));
 else
  reltuples = _bt_parallel_heapscan(buildstate,
            &indexInfo->ii_BrokenHotChain);





 {
  const int index[] = {
   PROGRESS_CREATEIDX_TUPLES_TOTAL,
   PROGRESS_SCAN_BLOCKS_TOTAL,
   PROGRESS_SCAN_BLOCKS_DONE
  };
  const int64 val[] = {
   buildstate->indtuples,
   0, 0
  };

  pgstat_progress_update_multi_param(3, index, val);
 }


 if (buildstate->spool2 && !buildstate->havedead)
 {

  _bt_spooldestroy(buildstate->spool2);
  buildstate->spool2 = ((void*)0);
 }

 return reltuples;
}
