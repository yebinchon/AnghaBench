
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_9__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ rightlink; } ;
struct TYPE_11__ {scalar_t__ rootBlkno; scalar_t__ (* getLeftMostChild ) (TYPE_2__*,int ) ;int index; void* (* findChildPtr ) (TYPE_2__*,int ,scalar_t__,void*) ;} ;
struct TYPE_10__ {scalar_t__ blkno; struct TYPE_10__* parent; void* off; void* buffer; } ;
typedef int Page ;
typedef void* OffsetNumber ;
typedef TYPE_1__ GinBtreeStack ;
typedef TYPE_2__* GinBtree ;
typedef void* Buffer ;
typedef scalar_t__ BlockNumber ;


 int Assert (int) ;
 scalar_t__ BufferGetBlockNumber (void*) ;
 int BufferGetPage (void*) ;
 int ERROR ;
 int GIN_EXCLUSIVE ;
 TYPE_9__* GinPageGetOpaque (int ) ;
 scalar_t__ GinPageIsIncompleteSplit (int ) ;
 scalar_t__ GinPageIsLeaf (int ) ;
 scalar_t__ InvalidBlockNumber ;
 void* InvalidOffsetNumber ;
 int LockBuffer (void*,int ) ;
 void* ReadBuffer (int ,scalar_t__) ;
 int ReleaseBuffer (void*) ;
 int UnlockReleaseBuffer (void*) ;
 int elog (int ,char*) ;
 int ginFinishSplit (TYPE_2__*,TYPE_1__*,int,int *) ;
 void* ginStepRight (void*,int ,int ) ;
 scalar_t__ palloc (int) ;
 scalar_t__ stub1 (TYPE_2__*,int ) ;
 void* stub2 (TYPE_2__*,int ,scalar_t__,void*) ;

__attribute__((used)) static void
ginFindParents(GinBtree btree, GinBtreeStack *stack)
{
 Page page;
 Buffer buffer;
 BlockNumber blkno,
    leftmostBlkno;
 OffsetNumber offset;
 GinBtreeStack *root;
 GinBtreeStack *ptr;
 root = stack->parent;
 while (root->parent)
 {
  ReleaseBuffer(root->buffer);
  root = root->parent;
 }

 Assert(root->blkno == btree->rootBlkno);
 Assert(BufferGetBlockNumber(root->buffer) == btree->rootBlkno);
 root->off = InvalidOffsetNumber;

 blkno = root->blkno;
 buffer = root->buffer;
 offset = InvalidOffsetNumber;

 ptr = (GinBtreeStack *) palloc(sizeof(GinBtreeStack));

 for (;;)
 {
  LockBuffer(buffer, GIN_EXCLUSIVE);
  page = BufferGetPage(buffer);
  if (GinPageIsLeaf(page))
   elog(ERROR, "Lost path");

  if (GinPageIsIncompleteSplit(page))
  {
   Assert(blkno != btree->rootBlkno);
   ptr->blkno = blkno;
   ptr->buffer = buffer;





   ptr->parent = root;
   ptr->off = InvalidOffsetNumber;

   ginFinishSplit(btree, ptr, 0, ((void*)0));
  }

  leftmostBlkno = btree->getLeftMostChild(btree, page);

  while ((offset = btree->findChildPtr(btree, page, stack->blkno, InvalidOffsetNumber)) == InvalidOffsetNumber)
  {
   blkno = GinPageGetOpaque(page)->rightlink;
   if (blkno == InvalidBlockNumber)
   {
    UnlockReleaseBuffer(buffer);
    break;
   }
   buffer = ginStepRight(buffer, btree->index, GIN_EXCLUSIVE);
   page = BufferGetPage(buffer);


   if (GinPageIsIncompleteSplit(page))
   {
    Assert(blkno != btree->rootBlkno);
    ptr->blkno = blkno;
    ptr->buffer = buffer;
    ptr->parent = root;
    ptr->off = InvalidOffsetNumber;

    ginFinishSplit(btree, ptr, 0, ((void*)0));
   }
  }

  if (blkno != InvalidBlockNumber)
  {
   ptr->blkno = blkno;
   ptr->buffer = buffer;
   ptr->parent = root;

   ptr->off = offset;
   stack->parent = ptr;
   return;
  }


  blkno = leftmostBlkno;
  buffer = ReadBuffer(btree->index, blkno);
 }
}
