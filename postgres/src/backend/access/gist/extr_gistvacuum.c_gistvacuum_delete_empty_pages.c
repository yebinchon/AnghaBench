
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ uint64 ;
struct TYPE_9__ {int pages_removed; } ;
struct TYPE_12__ {TYPE_1__ stats; int empty_leaf_set; int internal_page_set; } ;
struct TYPE_11__ {int t_tid; } ;
struct TYPE_10__ {int strategy; int index; } ;
typedef int Relation ;
typedef scalar_t__ Page ;
typedef int OffsetNumber ;
typedef int ItemId ;
typedef TYPE_2__ IndexVacuumInfo ;
typedef TYPE_3__* IndexTuple ;
typedef TYPE_4__ GistBulkDeleteResult ;
typedef int Buffer ;
typedef scalar_t__ BlockNumber ;


 int Assert (int) ;
 scalar_t__ BufferGetPage (int ) ;
 scalar_t__ FirstOffsetNumber ;
 int GIST_EXCLUSIVE ;
 int GIST_SHARE ;
 int GIST_UNLOCK ;
 scalar_t__ GistPageIsDeleted (scalar_t__) ;
 scalar_t__ GistPageIsLeaf (scalar_t__) ;
 scalar_t__ ItemPointerGetBlockNumber (int *) ;
 int LockBuffer (int ,int ) ;
 int MAIN_FORKNUM ;
 int MaxOffsetNumber ;
 int OffsetNumberNext (int) ;
 int PageGetItem (scalar_t__,int ) ;
 int PageGetItemId (scalar_t__,int) ;
 scalar_t__ PageGetMaxOffsetNumber (scalar_t__) ;
 scalar_t__ PageIsNew (scalar_t__) ;
 int RBM_NORMAL ;
 int ReadBufferExtended (int ,int ,scalar_t__,int ,int ) ;
 int ReleaseBuffer (int ) ;
 int UnlockReleaseBuffer (int ) ;
 int gistcheckpage (int ,int ) ;
 scalar_t__ gistdeletepage (TYPE_2__*,TYPE_4__*,int ,int,int ) ;
 int intset_begin_iterate (int ) ;
 scalar_t__ intset_is_member (int ,scalar_t__) ;
 scalar_t__ intset_iterate_next (int ,scalar_t__*) ;
 scalar_t__ intset_num_entries (int ) ;

__attribute__((used)) static void
gistvacuum_delete_empty_pages(IndexVacuumInfo *info, GistBulkDeleteResult *stats)
{
 Relation rel = info->index;
 BlockNumber empty_pages_remaining;
 uint64 blkno;




 empty_pages_remaining = intset_num_entries(stats->empty_leaf_set);
 intset_begin_iterate(stats->internal_page_set);
 while (empty_pages_remaining > 0 &&
     intset_iterate_next(stats->internal_page_set, &blkno))
 {
  Buffer buffer;
  Page page;
  OffsetNumber off,
     maxoff;
  OffsetNumber todelete[MaxOffsetNumber];
  BlockNumber leafs_to_delete[MaxOffsetNumber];
  int ntodelete;
  int deleted;

  buffer = ReadBufferExtended(rel, MAIN_FORKNUM, (BlockNumber) blkno,
         RBM_NORMAL, info->strategy);

  LockBuffer(buffer, GIST_SHARE);
  page = (Page) BufferGetPage(buffer);

  if (PageIsNew(page) || GistPageIsDeleted(page) || GistPageIsLeaf(page))
  {




   Assert(0);
   UnlockReleaseBuffer(buffer);
   continue;
  }





  maxoff = PageGetMaxOffsetNumber(page);
  ntodelete = 0;
  for (off = FirstOffsetNumber;
    off <= maxoff && ntodelete < maxoff - 1;
    off = OffsetNumberNext(off))
  {
   ItemId iid = PageGetItemId(page, off);
   IndexTuple idxtuple = (IndexTuple) PageGetItem(page, iid);
   BlockNumber leafblk;

   leafblk = ItemPointerGetBlockNumber(&(idxtuple->t_tid));
   if (intset_is_member(stats->empty_leaf_set, leafblk))
   {
    leafs_to_delete[ntodelete] = leafblk;
    todelete[ntodelete++] = off;
   }
  }
  LockBuffer(buffer, GIST_UNLOCK);

  deleted = 0;
  for (int i = 0; i < ntodelete; i++)
  {
   Buffer leafbuf;





   if (PageGetMaxOffsetNumber(page) == FirstOffsetNumber)
    break;

   leafbuf = ReadBufferExtended(rel, MAIN_FORKNUM, leafs_to_delete[i],
           RBM_NORMAL, info->strategy);
   LockBuffer(leafbuf, GIST_EXCLUSIVE);
   gistcheckpage(rel, leafbuf);

   LockBuffer(buffer, GIST_EXCLUSIVE);
   if (gistdeletepage(info, stats,
          buffer, todelete[i] - deleted,
          leafbuf))
    deleted++;
   LockBuffer(buffer, GIST_UNLOCK);

   UnlockReleaseBuffer(leafbuf);
  }

  ReleaseBuffer(buffer);


  stats->stats.pages_removed += deleted;





  empty_pages_remaining -= ntodelete;
 }
}
