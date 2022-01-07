
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct TYPE_13__ {scalar_t__ rootBlkno; int fullScan; scalar_t__ (* findChildPage ) (TYPE_2__*,TYPE_1__*) ;int index; scalar_t__ (* isMoveRight ) (TYPE_2__*,int ) ;} ;
struct TYPE_12__ {scalar_t__ blkno; int predictNumber; void* buffer; struct TYPE_12__* parent; int off; } ;
struct TYPE_11__ {scalar_t__ rightlink; } ;
typedef int Snapshot ;
typedef int Page ;
typedef TYPE_1__ GinBtreeStack ;
typedef TYPE_2__* GinBtree ;
typedef scalar_t__ BlockNumber ;


 int Assert (int) ;
 int BufferGetPage (void*) ;
 int CheckForSerializableConflictIn (int ,int *,void*) ;
 int GIN_UNLOCK ;
 TYPE_10__* GinPageGetOpaque (int ) ;
 scalar_t__ GinPageIsIncompleteSplit (int ) ;
 scalar_t__ GinPageIsLeaf (int ) ;
 scalar_t__ InvalidBlockNumber ;
 int InvalidOffsetNumber ;
 int LockBuffer (void*,int ) ;
 void* ReadBuffer (int ,scalar_t__) ;
 void* ReleaseAndReadBuffer (void*,int ,scalar_t__) ;
 int TestForOldSnapshot (int ,int ,int ) ;
 int ginFinishSplit (TYPE_2__*,TYPE_1__*,int,int *) ;
 void* ginStepRight (void*,int ,int) ;
 int ginTraverseLock (void*,int) ;
 scalar_t__ palloc (int) ;
 scalar_t__ stub1 (TYPE_2__*,int ) ;
 scalar_t__ stub2 (TYPE_2__*,TYPE_1__*) ;

GinBtreeStack *
ginFindLeafPage(GinBtree btree, bool searchMode,
    bool rootConflictCheck, Snapshot snapshot)
{
 GinBtreeStack *stack;

 stack = (GinBtreeStack *) palloc(sizeof(GinBtreeStack));
 stack->blkno = btree->rootBlkno;
 stack->buffer = ReadBuffer(btree->index, btree->rootBlkno);
 stack->parent = ((void*)0);
 stack->predictNumber = 1;

 if (rootConflictCheck)
  CheckForSerializableConflictIn(btree->index, ((void*)0), stack->buffer);

 for (;;)
 {
  Page page;
  BlockNumber child;
  int access;

  stack->off = InvalidOffsetNumber;

  page = BufferGetPage(stack->buffer);
  TestForOldSnapshot(snapshot, btree->index, page);

  access = ginTraverseLock(stack->buffer, searchMode);





  if (!searchMode && GinPageIsIncompleteSplit(page))
   ginFinishSplit(btree, stack, 0, ((void*)0));





  while (btree->fullScan == 0 && stack->blkno != btree->rootBlkno &&
      btree->isMoveRight(btree, page))
  {
   BlockNumber rightlink = GinPageGetOpaque(page)->rightlink;

   if (rightlink == InvalidBlockNumber)

    break;

   stack->buffer = ginStepRight(stack->buffer, btree->index, access);
   stack->blkno = rightlink;
   page = BufferGetPage(stack->buffer);
   TestForOldSnapshot(snapshot, btree->index, page);

   if (!searchMode && GinPageIsIncompleteSplit(page))
    ginFinishSplit(btree, stack, 0, ((void*)0));
  }

  if (GinPageIsLeaf(page))
   return stack;


  child = btree->findChildPage(btree, stack);

  LockBuffer(stack->buffer, GIN_UNLOCK);
  Assert(child != InvalidBlockNumber);
  Assert(stack->blkno != child);

  if (searchMode)
  {

   stack->blkno = child;
   stack->buffer = ReleaseAndReadBuffer(stack->buffer, btree->index, stack->blkno);
  }
  else
  {
   GinBtreeStack *ptr = (GinBtreeStack *) palloc(sizeof(GinBtreeStack));

   ptr->parent = stack;
   stack = ptr;
   stack->blkno = child;
   stack->buffer = ReadBuffer(btree->index, stack->blkno);
   stack->predictNumber = 1;
  }
 }
}
