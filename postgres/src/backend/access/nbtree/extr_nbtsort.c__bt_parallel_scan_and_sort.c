
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int TableScanDesc ;
struct TYPE_18__ {int havedead; scalar_t__ indtuples; int * btleader; TYPE_3__* spool2; TYPE_3__* spool; int heap; int isunique; } ;
struct TYPE_17__ {double reltuples; int havedead; int brokenhotchain; int workersdonecv; int mutex; int indtuples; int nparticipantsdone; int isconcurrent; int isunique; } ;
struct TYPE_16__ {int isunique; void* sortstate; int index; int heap; } ;
struct TYPE_15__ {scalar_t__ ii_BrokenHotChain; int ii_Concurrent; } ;
struct TYPE_14__ {int isWorker; int nParticipants; int * sharedsort; } ;
typedef int SortCoordinateData ;
typedef TYPE_1__* SortCoordinate ;
typedef int Sharedsort ;
typedef TYPE_2__ IndexInfo ;
typedef TYPE_3__ BTSpool ;
typedef TYPE_4__ BTShared ;
typedef TYPE_5__ BTBuildState ;


 TYPE_2__* BuildIndexInfo (int ) ;
 int ConditionVariableSignal (int *) ;
 int Min (int,int ) ;
 int ParallelTableScanFromBTShared (TYPE_4__*) ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 int _bt_build_callback ;
 TYPE_1__* palloc0 (int) ;
 int table_beginscan_parallel (int ,int ) ;
 double table_index_build_scan (int ,int ,TYPE_2__*,int,int,int ,void*,int ) ;
 void* tuplesort_begin_index_btree (int ,int ,int,int,TYPE_1__*,int) ;
 int tuplesort_end (void*) ;
 int tuplesort_performsort (void*) ;
 int work_mem ;

__attribute__((used)) static void
_bt_parallel_scan_and_sort(BTSpool *btspool, BTSpool *btspool2,
         BTShared *btshared, Sharedsort *sharedsort,
         Sharedsort *sharedsort2, int sortmem, bool progress)
{
 SortCoordinate coordinate;
 BTBuildState buildstate;
 TableScanDesc scan;
 double reltuples;
 IndexInfo *indexInfo;


 coordinate = palloc0(sizeof(SortCoordinateData));
 coordinate->isWorker = 1;
 coordinate->nParticipants = -1;
 coordinate->sharedsort = sharedsort;


 btspool->sortstate = tuplesort_begin_index_btree(btspool->heap,
              btspool->index,
              btspool->isunique,
              sortmem, coordinate,
              0);





 if (btspool2)
 {
  SortCoordinate coordinate2;







  coordinate2 = palloc0(sizeof(SortCoordinateData));
  coordinate2->isWorker = 1;
  coordinate2->nParticipants = -1;
  coordinate2->sharedsort = sharedsort2;
  btspool2->sortstate =
   tuplesort_begin_index_btree(btspool->heap, btspool->index, 0,
          Min(sortmem, work_mem), coordinate2,
          0);
 }


 buildstate.isunique = btshared->isunique;
 buildstate.havedead = 0;
 buildstate.heap = btspool->heap;
 buildstate.spool = btspool;
 buildstate.spool2 = btspool2;
 buildstate.indtuples = 0;
 buildstate.btleader = ((void*)0);


 indexInfo = BuildIndexInfo(btspool->index);
 indexInfo->ii_Concurrent = btshared->isconcurrent;
 scan = table_beginscan_parallel(btspool->heap,
         ParallelTableScanFromBTShared(btshared));
 reltuples = table_index_build_scan(btspool->heap, btspool->index, indexInfo,
            1, progress, _bt_build_callback,
            (void *) &buildstate, scan);
 tuplesort_performsort(btspool->sortstate);
 if (btspool2)
  tuplesort_performsort(btspool2->sortstate);





 SpinLockAcquire(&btshared->mutex);
 btshared->nparticipantsdone++;
 btshared->reltuples += reltuples;
 if (buildstate.havedead)
  btshared->havedead = 1;
 btshared->indtuples += buildstate.indtuples;
 if (indexInfo->ii_BrokenHotChain)
  btshared->brokenhotchain = 1;
 SpinLockRelease(&btshared->mutex);


 ConditionVariableSignal(&btshared->workersdonecv);


 tuplesort_end(btspool->sortstate);
 if (btspool2)
  tuplesort_end(btspool2->sortstate);
}
