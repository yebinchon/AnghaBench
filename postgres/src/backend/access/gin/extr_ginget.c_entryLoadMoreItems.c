
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_9__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_14__ {int flags; } ;
struct TYPE_13__ {int fullScan; int itemptr; } ;
struct TYPE_12__ {void* buffer; } ;
struct TYPE_11__ {int isFinished; int offset; int nlist; void* buffer; int * list; TYPE_5__ btree; int curItem; } ;
struct TYPE_10__ {int index; } ;
typedef int Snapshot ;
typedef int Page ;
typedef int ItemPointerData ;
typedef TYPE_1__ GinState ;
typedef TYPE_2__* GinScanEntry ;
typedef TYPE_3__ GinBtreeStack ;


 int BufferGetPage (void*) ;
 int BufferIsValid (void*) ;
 int DEBUG2 ;
 int FirstOffsetNumber ;
 int GIN_DELETED ;
 int GIN_SHARE ;
 int GIN_UNLOCK ;
 int * GinDataLeafPageGetItems (int ,int*,int ) ;
 int * GinDataPageGetRightBound (int ) ;
 scalar_t__ GinItemPointerGetBlockNumber (int *) ;
 int GinItemPointerGetOffsetNumber (int *) ;
 TYPE_9__* GinPageGetOpaque (int ) ;
 scalar_t__ GinPageRightMost (int ) ;
 int IncrBufferRefCount (void*) ;
 void* InvalidBuffer ;
 int InvalidOffsetNumber ;
 scalar_t__ ItemPointerIsLossyPage (int *) ;
 int ItemPointerSet (int *,scalar_t__,int ) ;
 int LockBuffer (void*,int ) ;
 int OffsetNumberNext (int ) ;
 int ReleaseBuffer (void*) ;
 int UnlockReleaseBuffer (void*) ;
 int elog (int ,char*,scalar_t__,int ,int) ;
 int freeGinBtreeStack (TYPE_3__*) ;
 scalar_t__ ginCompareItemPointers (int *,int *) ;
 TYPE_3__* ginFindLeafPage (TYPE_5__*,int,int,int ) ;
 void* ginStepRight (void*,int ,int ) ;
 int pfree (int *) ;

__attribute__((used)) static void
entryLoadMoreItems(GinState *ginstate, GinScanEntry entry,
       ItemPointerData advancePast, Snapshot snapshot)
{
 Page page;
 int i;
 bool stepright;

 if (!BufferIsValid(entry->buffer))
 {
  entry->isFinished = 1;
  return;
 }







 if (ginCompareItemPointers(&entry->curItem, &advancePast) == 0)
 {
  stepright = 1;
  LockBuffer(entry->buffer, GIN_SHARE);
 }
 else
 {
  GinBtreeStack *stack;

  ReleaseBuffer(entry->buffer);




  if (ItemPointerIsLossyPage(&advancePast))
  {
   ItemPointerSet(&entry->btree.itemptr,
         GinItemPointerGetBlockNumber(&advancePast) + 1,
         FirstOffsetNumber);
  }
  else
  {
   ItemPointerSet(&entry->btree.itemptr,
         GinItemPointerGetBlockNumber(&advancePast),
         OffsetNumberNext(GinItemPointerGetOffsetNumber(&advancePast)));
  }
  entry->btree.fullScan = 0;
  stack = ginFindLeafPage(&entry->btree, 1, 0, snapshot);


  entry->buffer = stack->buffer;
  IncrBufferRefCount(entry->buffer);
  freeGinBtreeStack(stack);
  stepright = 0;
 }

 elog(DEBUG2, "entryLoadMoreItems, %u/%u, skip: %d",
   GinItemPointerGetBlockNumber(&advancePast),
   GinItemPointerGetOffsetNumber(&advancePast),
   !stepright);

 page = BufferGetPage(entry->buffer);
 for (;;)
 {
  entry->offset = InvalidOffsetNumber;
  if (entry->list)
  {
   pfree(entry->list);
   entry->list = ((void*)0);
   entry->nlist = 0;
  }

  if (stepright)
  {




   if (GinPageRightMost(page))
   {
    UnlockReleaseBuffer(entry->buffer);
    entry->buffer = InvalidBuffer;
    entry->isFinished = 1;
    return;
   }





   entry->buffer = ginStepRight(entry->buffer,
           ginstate->index,
           GIN_SHARE);
   page = BufferGetPage(entry->buffer);
  }
  stepright = 1;

  if (GinPageGetOpaque(page)->flags & GIN_DELETED)
   continue;
  if (!GinPageRightMost(page) &&
   ginCompareItemPointers(&advancePast, GinDataPageGetRightBound(page)) >= 0)
  {




   continue;
  }

  entry->list = GinDataLeafPageGetItems(page, &entry->nlist, advancePast);

  for (i = 0; i < entry->nlist; i++)
  {
   if (ginCompareItemPointers(&advancePast, &entry->list[i]) < 0)
   {
    entry->offset = i;

    if (GinPageRightMost(page))
    {

     UnlockReleaseBuffer(entry->buffer);
     entry->buffer = InvalidBuffer;
    }
    else
     LockBuffer(entry->buffer, GIN_UNLOCK);
    return;
   }
  }
 }
}
