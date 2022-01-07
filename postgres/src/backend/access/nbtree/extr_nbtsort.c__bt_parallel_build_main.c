
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int shm_toc ;
typedef int dsm_segment ;
struct TYPE_7__ {int isunique; int scantuplesortstates; int indexrelid; int heaprelid; int isconcurrent; } ;
struct TYPE_6__ {int isunique; void* index; void* heap; } ;
typedef int Sharedsort ;
typedef void* Relation ;
typedef int LOCKMODE ;
typedef TYPE_1__ BTSpool ;
typedef TYPE_2__ BTShared ;


 int AccessExclusiveLock ;
 int PARALLEL_KEY_BTREE_SHARED ;
 int PARALLEL_KEY_QUERY_TEXT ;
 int PARALLEL_KEY_TUPLESORT ;
 int PARALLEL_KEY_TUPLESORT_SPOOL2 ;
 int ResetUsage () ;
 int RowExclusiveLock ;
 int STATE_RUNNING ;
 int ShareLock ;
 int ShareUpdateExclusiveLock ;
 int ShowUsage (char*) ;
 int _bt_parallel_scan_and_sort (TYPE_1__*,TYPE_1__*,TYPE_2__*,int *,int *,int,int) ;
 char* debug_query_string ;
 int index_close (void*,int ) ;
 void* index_open (int ,int ) ;
 scalar_t__ log_btree_build_stats ;
 int maintenance_work_mem ;
 scalar_t__ palloc0 (int) ;
 int pgstat_report_activity (int ,char*) ;
 void* shm_toc_lookup (int *,int ,int) ;
 int table_close (void*,int ) ;
 void* table_open (int ,int ) ;
 int tuplesort_attach_shared (int *,int *) ;

void
_bt_parallel_build_main(dsm_segment *seg, shm_toc *toc)
{
 char *sharedquery;
 BTSpool *btspool;
 BTSpool *btspool2;
 BTShared *btshared;
 Sharedsort *sharedsort;
 Sharedsort *sharedsort2;
 Relation heapRel;
 Relation indexRel;
 LOCKMODE heapLockmode;
 LOCKMODE indexLockmode;
 int sortmem;







 sharedquery = shm_toc_lookup(toc, PARALLEL_KEY_QUERY_TEXT, 0);
 debug_query_string = sharedquery;


 pgstat_report_activity(STATE_RUNNING, debug_query_string);


 btshared = shm_toc_lookup(toc, PARALLEL_KEY_BTREE_SHARED, 0);


 if (!btshared->isconcurrent)
 {
  heapLockmode = ShareLock;
  indexLockmode = AccessExclusiveLock;
 }
 else
 {
  heapLockmode = ShareUpdateExclusiveLock;
  indexLockmode = RowExclusiveLock;
 }


 heapRel = table_open(btshared->heaprelid, heapLockmode);
 indexRel = index_open(btshared->indexrelid, indexLockmode);


 btspool = (BTSpool *) palloc0(sizeof(BTSpool));
 btspool->heap = heapRel;
 btspool->index = indexRel;
 btspool->isunique = btshared->isunique;


 sharedsort = shm_toc_lookup(toc, PARALLEL_KEY_TUPLESORT, 0);
 tuplesort_attach_shared(sharedsort, seg);
 if (!btshared->isunique)
 {
  btspool2 = ((void*)0);
  sharedsort2 = ((void*)0);
 }
 else
 {

  btspool2 = (BTSpool *) palloc0(sizeof(BTSpool));


  btspool2->heap = btspool->heap;
  btspool2->index = btspool->index;
  btspool2->isunique = 0;

  sharedsort2 = shm_toc_lookup(toc, PARALLEL_KEY_TUPLESORT_SPOOL2, 0);
  tuplesort_attach_shared(sharedsort2, seg);
 }


 sortmem = maintenance_work_mem / btshared->scantuplesortstates;
 _bt_parallel_scan_and_sort(btspool, btspool2, btshared, sharedsort,
          sharedsort2, sortmem, 0);
 index_close(indexRel, indexLockmode);
 table_close(heapRel, heapLockmode);
}
