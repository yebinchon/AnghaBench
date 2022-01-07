
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ num_index_tuples; scalar_t__ pages_free; scalar_t__ num_pages; } ;
struct TYPE_6__ {int index; int strategy; scalar_t__ analyze_only; } ;
typedef int Relation ;
typedef scalar_t__ Page ;
typedef TYPE_1__ IndexVacuumInfo ;
typedef TYPE_2__ IndexBulkDeleteResult ;
typedef int Buffer ;
typedef scalar_t__ BlockNumber ;


 scalar_t__ BLOOM_HEAD_BLKNO ;
 int BUFFER_LOCK_SHARE ;
 scalar_t__ BloomPageGetMaxOffset (scalar_t__) ;
 scalar_t__ BloomPageIsDeleted (scalar_t__) ;
 scalar_t__ BufferGetPage (int ) ;
 int IndexFreeSpaceMapVacuum (int ) ;
 int LockBuffer (int ,int ) ;
 int MAIN_FORKNUM ;
 scalar_t__ PageIsNew (scalar_t__) ;
 int RBM_NORMAL ;
 int ReadBufferExtended (int ,int ,scalar_t__,int ,int ) ;
 int RecordFreeIndexPage (int ,scalar_t__) ;
 scalar_t__ RelationGetNumberOfBlocks (int ) ;
 int UnlockReleaseBuffer (int ) ;
 scalar_t__ palloc0 (int) ;
 int vacuum_delay_point () ;

IndexBulkDeleteResult *
blvacuumcleanup(IndexVacuumInfo *info, IndexBulkDeleteResult *stats)
{
 Relation index = info->index;
 BlockNumber npages,
    blkno;

 if (info->analyze_only)
  return stats;

 if (stats == ((void*)0))
  stats = (IndexBulkDeleteResult *) palloc0(sizeof(IndexBulkDeleteResult));





 npages = RelationGetNumberOfBlocks(index);
 stats->num_pages = npages;
 stats->pages_free = 0;
 stats->num_index_tuples = 0;
 for (blkno = BLOOM_HEAD_BLKNO; blkno < npages; blkno++)
 {
  Buffer buffer;
  Page page;

  vacuum_delay_point();

  buffer = ReadBufferExtended(index, MAIN_FORKNUM, blkno,
         RBM_NORMAL, info->strategy);
  LockBuffer(buffer, BUFFER_LOCK_SHARE);
  page = (Page) BufferGetPage(buffer);

  if (PageIsNew(page) || BloomPageIsDeleted(page))
  {
   RecordFreeIndexPage(index, blkno);
   stats->pages_free++;
  }
  else
  {
   stats->num_index_tuples += BloomPageGetMaxOffset(page);
  }

  UnlockReleaseBuffer(buffer);
 }

 IndexFreeSpaceMapVacuum(info->index);

 return stats;
}
