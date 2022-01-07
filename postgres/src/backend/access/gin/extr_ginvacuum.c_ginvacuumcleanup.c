
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int idxStat ;
struct TYPE_12__ {scalar_t__ nTotalPages; int nEntries; int nEntryPages; int nDataPages; } ;
struct TYPE_11__ {void* num_pages; scalar_t__ pages_free; int estimated_count; int num_index_tuples; } ;
struct TYPE_10__ {int index; int strategy; int estimated_count; int num_heap_tuples; scalar_t__ analyze_only; } ;
typedef int Relation ;
typedef scalar_t__ Page ;
typedef TYPE_1__ IndexVacuumInfo ;
typedef TYPE_2__ IndexBulkDeleteResult ;
typedef TYPE_3__ GinStatsData ;
typedef int GinState ;
typedef int Buffer ;
typedef scalar_t__ BlockNumber ;


 int Assert (int) ;
 scalar_t__ BufferGetPage (int ) ;
 int ExclusiveLock ;
 scalar_t__ GIN_ROOT_BLKNO ;
 int GIN_SHARE ;
 scalar_t__ GinPageIsData (scalar_t__) ;
 scalar_t__ GinPageIsLeaf (scalar_t__) ;
 int GinPageIsList (scalar_t__) ;
 scalar_t__ GinPageIsRecyclable (scalar_t__) ;
 int IndexFreeSpaceMapVacuum (int ) ;
 scalar_t__ IsAutoVacuumWorkerProcess () ;
 int LockBuffer (int ,int ) ;
 int LockRelationForExtension (int ,int ) ;
 int MAIN_FORKNUM ;
 scalar_t__ PageGetMaxOffsetNumber (scalar_t__) ;
 int RBM_NORMAL ;
 int RELATION_IS_LOCAL (int ) ;
 int ReadBufferExtended (int ,int ,scalar_t__,int ,int ) ;
 int RecordFreeIndexPage (int ,scalar_t__) ;
 void* RelationGetNumberOfBlocks (int ) ;
 int UnlockRelationForExtension (int ,int ) ;
 int UnlockReleaseBuffer (int ) ;
 int ginInsertCleanup (int *,int,int,int,TYPE_2__*) ;
 int ginUpdateStats (int ,TYPE_3__*,int) ;
 int initGinState (int *,int ) ;
 int memset (TYPE_3__*,int ,int) ;
 scalar_t__ palloc0 (int) ;
 int vacuum_delay_point () ;

IndexBulkDeleteResult *
ginvacuumcleanup(IndexVacuumInfo *info, IndexBulkDeleteResult *stats)
{
 Relation index = info->index;
 bool needLock;
 BlockNumber npages,
    blkno;
 BlockNumber totFreePages;
 GinState ginstate;
 GinStatsData idxStat;





 if (info->analyze_only)
 {
  if (IsAutoVacuumWorkerProcess())
  {
   initGinState(&ginstate, index);
   ginInsertCleanup(&ginstate, 0, 1, 1, stats);
  }
  return stats;
 }





 if (stats == ((void*)0))
 {
  stats = (IndexBulkDeleteResult *) palloc0(sizeof(IndexBulkDeleteResult));
  initGinState(&ginstate, index);
  ginInsertCleanup(&ginstate, !IsAutoVacuumWorkerProcess(),
       0, 1, stats);
 }

 memset(&idxStat, 0, sizeof(idxStat));






 stats->num_index_tuples = info->num_heap_tuples;
 stats->estimated_count = info->estimated_count;




 needLock = !RELATION_IS_LOCAL(index);

 if (needLock)
  LockRelationForExtension(index, ExclusiveLock);
 npages = RelationGetNumberOfBlocks(index);
 if (needLock)
  UnlockRelationForExtension(index, ExclusiveLock);

 totFreePages = 0;

 for (blkno = GIN_ROOT_BLKNO; blkno < npages; blkno++)
 {
  Buffer buffer;
  Page page;

  vacuum_delay_point();

  buffer = ReadBufferExtended(index, MAIN_FORKNUM, blkno,
         RBM_NORMAL, info->strategy);
  LockBuffer(buffer, GIN_SHARE);
  page = (Page) BufferGetPage(buffer);

  if (GinPageIsRecyclable(page))
  {
   Assert(blkno != GIN_ROOT_BLKNO);
   RecordFreeIndexPage(index, blkno);
   totFreePages++;
  }
  else if (GinPageIsData(page))
  {
   idxStat.nDataPages++;
  }
  else if (!GinPageIsList(page))
  {
   idxStat.nEntryPages++;

   if (GinPageIsLeaf(page))
    idxStat.nEntries += PageGetMaxOffsetNumber(page);
  }

  UnlockReleaseBuffer(buffer);
 }


 idxStat.nTotalPages = npages;
 ginUpdateStats(info->index, &idxStat, 0);


 IndexFreeSpaceMapVacuum(info->index);

 stats->pages_free = totFreePages;

 if (needLock)
  LockRelationForExtension(index, ExclusiveLock);
 stats->num_pages = RelationGetNumberOfBlocks(index);
 if (needLock)
  UnlockRelationForExtension(index, ExclusiveLock);

 return stats;
}
