
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ maxoff; } ;
struct TYPE_8__ {scalar_t__ leftBlkno; int isRoot; struct TYPE_8__* parent; void* blkno; struct TYPE_8__* child; } ;
struct TYPE_7__ {int strategy; int index; } ;
typedef int PostingItem ;
typedef int Page ;
typedef scalar_t__ OffsetNumber ;
typedef TYPE_1__ GinVacuumState ;
typedef TYPE_2__ DataPageDeleteStack ;
typedef int Buffer ;
typedef void* BlockNumber ;


 int Assert (int) ;
 int BufferGetPage (int ) ;
 scalar_t__ FirstOffsetNumber ;
 int GIN_EXCLUSIVE ;
 int GIN_UNLOCK ;
 int GinDataLeafPageIsEmpty (int ) ;
 int * GinDataPageGetPostingItem (int ,scalar_t__) ;
 TYPE_6__* GinPageGetOpaque (int ) ;
 int GinPageIsData (int ) ;
 scalar_t__ GinPageIsLeaf (int ) ;
 int GinPageRightMost (int ) ;
 scalar_t__ InvalidBlockNumber ;
 int LockBuffer (int ,int ) ;
 int MAIN_FORKNUM ;
 void* PostingItemGetBlockNumber (int *) ;
 int RBM_NORMAL ;
 int ReadBufferExtended (int ,int ,void*,int ,int ) ;
 int ReleaseBuffer (int ) ;
 int ginDeletePage (TYPE_1__*,void*,scalar_t__,void*,scalar_t__,int ) ;
 scalar_t__ palloc0 (int) ;

__attribute__((used)) static bool
ginScanToDelete(GinVacuumState *gvs, BlockNumber blkno, bool isRoot,
    DataPageDeleteStack *parent, OffsetNumber myoff)
{
 DataPageDeleteStack *me;
 Buffer buffer;
 Page page;
 bool meDelete = 0;
 bool isempty;

 if (isRoot)
 {
  me = parent;
 }
 else
 {
  if (!parent->child)
  {
   me = (DataPageDeleteStack *) palloc0(sizeof(DataPageDeleteStack));
   me->parent = parent;
   parent->child = me;
   me->leftBlkno = InvalidBlockNumber;
  }
  else
   me = parent->child;
 }

 buffer = ReadBufferExtended(gvs->index, MAIN_FORKNUM, blkno,
        RBM_NORMAL, gvs->strategy);

 if (!isRoot)
  LockBuffer(buffer, GIN_EXCLUSIVE);

 page = BufferGetPage(buffer);

 Assert(GinPageIsData(page));

 if (!GinPageIsLeaf(page))
 {
  OffsetNumber i;

  me->blkno = blkno;
  for (i = FirstOffsetNumber; i <= GinPageGetOpaque(page)->maxoff; i++)
  {
   PostingItem *pitem = GinDataPageGetPostingItem(page, i);

   if (ginScanToDelete(gvs, PostingItemGetBlockNumber(pitem), 0, me, i))
    i--;
  }
 }

 if (GinPageIsLeaf(page))
  isempty = GinDataLeafPageIsEmpty(page);
 else
  isempty = GinPageGetOpaque(page)->maxoff < FirstOffsetNumber;

 if (isempty)
 {

  if (me->leftBlkno != InvalidBlockNumber && !GinPageRightMost(page))
  {
   Assert(!isRoot);
   ginDeletePage(gvs, blkno, me->leftBlkno, me->parent->blkno, myoff, me->parent->isRoot);
   meDelete = 1;
  }
 }

 if (!isRoot)
  LockBuffer(buffer, GIN_UNLOCK);

 ReleaseBuffer(buffer);

 if (!meDelete)
  me->leftBlkno = blkno;

 return meDelete;
}
