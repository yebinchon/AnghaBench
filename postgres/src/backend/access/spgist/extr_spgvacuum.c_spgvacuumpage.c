
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int lastFilledBlock; TYPE_1__* stats; TYPE_2__* info; } ;
typedef TYPE_3__ spgBulkDeleteState ;
struct TYPE_8__ {int strategy; int index; } ;
struct TYPE_7__ {int pages_deleted; } ;
typedef int Relation ;
typedef scalar_t__ Page ;
typedef int Buffer ;
typedef int BlockNumber ;


 int BUFFER_LOCK_EXCLUSIVE ;
 scalar_t__ BufferGetPage (int ) ;
 int LockBuffer (int ,int ) ;
 int MAIN_FORKNUM ;
 scalar_t__ PageIsEmpty (scalar_t__) ;
 scalar_t__ PageIsNew (scalar_t__) ;
 int RBM_NORMAL ;
 int ReadBufferExtended (int ,int ,int ,int ,int ) ;
 int RecordFreeIndexPage (int ,int ) ;
 scalar_t__ SpGistBlockIsRoot (int ) ;
 scalar_t__ SpGistPageIsLeaf (scalar_t__) ;
 int SpGistSetLastUsedPage (int ,int ) ;
 int UnlockReleaseBuffer (int ) ;
 int vacuumLeafPage (TYPE_3__*,int ,int ,int) ;
 int vacuumLeafRoot (TYPE_3__*,int ,int ) ;
 int vacuumRedirectAndPlaceholder (int ,int ) ;
 int vacuum_delay_point () ;

__attribute__((used)) static void
spgvacuumpage(spgBulkDeleteState *bds, BlockNumber blkno)
{
 Relation index = bds->info->index;
 Buffer buffer;
 Page page;


 vacuum_delay_point();

 buffer = ReadBufferExtended(index, MAIN_FORKNUM, blkno,
        RBM_NORMAL, bds->info->strategy);
 LockBuffer(buffer, BUFFER_LOCK_EXCLUSIVE);
 page = (Page) BufferGetPage(buffer);

 if (PageIsNew(page))
 {




 }
 else if (PageIsEmpty(page))
 {

 }
 else if (SpGistPageIsLeaf(page))
 {
  if (SpGistBlockIsRoot(blkno))
  {
   vacuumLeafRoot(bds, index, buffer);

  }
  else
  {
   vacuumLeafPage(bds, index, buffer, 0);
   vacuumRedirectAndPlaceholder(index, buffer);
  }
 }
 else
 {

  vacuumRedirectAndPlaceholder(index, buffer);
 }







 if (!SpGistBlockIsRoot(blkno))
 {
  if (PageIsNew(page) || PageIsEmpty(page))
  {
   RecordFreeIndexPage(index, blkno);
   bds->stats->pages_deleted++;
  }
  else
  {
   SpGistSetLastUsedPage(index, buffer);
   bds->lastFilledBlock = blkno;
  }
 }

 UnlockReleaseBuffer(buffer);
}
