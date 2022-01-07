
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int rightlink; } ;
struct TYPE_5__ {int strategy; int index; int tmpCxt; } ;
typedef int PostingItem ;
typedef int Page ;
typedef int MemoryContext ;
typedef TYPE_1__ GinVacuumState ;
typedef int Buffer ;
typedef int BlockNumber ;


 int Assert (int) ;
 int BufferGetPage (int ) ;
 scalar_t__ FirstOffsetNumber ;
 int GIN_EXCLUSIVE ;
 int GIN_SHARE ;
 int GIN_UNLOCK ;
 scalar_t__ GinDataLeafPageIsEmpty (int ) ;
 int * GinDataPageGetPostingItem (int ,scalar_t__) ;
 TYPE_4__* GinPageGetOpaque (int ) ;
 int GinPageIsData (int ) ;
 scalar_t__ GinPageIsLeaf (int ) ;
 int InvalidBlockNumber ;
 int LockBuffer (int ,int ) ;
 int MAIN_FORKNUM ;
 int MemoryContextReset (int ) ;
 int MemoryContextSwitchTo (int ) ;
 scalar_t__ PageGetMaxOffsetNumber (int ) ;
 int PostingItemGetBlockNumber (int *) ;
 int RBM_NORMAL ;
 int ReadBufferExtended (int ,int ,int ,int ,int ) ;
 int UnlockReleaseBuffer (int ) ;
 int ginVacuumPostingTreeLeaf (int ,int ,TYPE_1__*) ;

__attribute__((used)) static bool
ginVacuumPostingTreeLeaves(GinVacuumState *gvs, BlockNumber blkno)
{
 Buffer buffer;
 Page page;
 bool hasVoidPage = 0;
 MemoryContext oldCxt;


 while (1)
 {
  PostingItem *pitem;

  buffer = ReadBufferExtended(gvs->index, MAIN_FORKNUM, blkno,
         RBM_NORMAL, gvs->strategy);
  LockBuffer(buffer, GIN_SHARE);
  page = BufferGetPage(buffer);

  Assert(GinPageIsData(page));

  if (GinPageIsLeaf(page))
  {
   LockBuffer(buffer, GIN_UNLOCK);
   LockBuffer(buffer, GIN_EXCLUSIVE);
   break;
  }

  Assert(PageGetMaxOffsetNumber(page) >= FirstOffsetNumber);

  pitem = GinDataPageGetPostingItem(page, FirstOffsetNumber);
  blkno = PostingItemGetBlockNumber(pitem);
  Assert(blkno != InvalidBlockNumber);

  UnlockReleaseBuffer(buffer);
 }


 while (1)
 {
  oldCxt = MemoryContextSwitchTo(gvs->tmpCxt);
  ginVacuumPostingTreeLeaf(gvs->index, buffer, gvs);
  MemoryContextSwitchTo(oldCxt);
  MemoryContextReset(gvs->tmpCxt);

  if (GinDataLeafPageIsEmpty(page))
   hasVoidPage = 1;

  blkno = GinPageGetOpaque(page)->rightlink;

  UnlockReleaseBuffer(buffer);

  if (blkno == InvalidBlockNumber)
   break;

  buffer = ReadBufferExtended(gvs->index, MAIN_FORKNUM, blkno,
         RBM_NORMAL, gvs->strategy);
  LockBuffer(buffer, GIN_EXCLUSIVE);
  page = BufferGetPage(buffer);
 }

 return hasVoidPage;
}
