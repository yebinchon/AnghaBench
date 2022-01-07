
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


struct TYPE_24__ {scalar_t__ (* findItem ) (TYPE_4__*,TYPE_3__*) ;} ;
struct TYPE_23__ {int predictNumber; int buffer; int off; } ;
struct TYPE_22__ {int nlist; int reduceResult; int predictNumberResult; int isFinished; int attnum; int * list; int buffer; int btree; int * matchBitmap; int * matchIterator; int queryCategory; scalar_t__ isPartialMatch; int queryKey; int * matchResult; int offset; int curItem; } ;
struct TYPE_21__ {int index; } ;
typedef int Snapshot ;
typedef int Page ;
typedef int ItemPointerData ;
typedef int IndexTuple ;
typedef TYPE_1__ GinState ;
typedef TYPE_2__* GinScanEntry ;
typedef TYPE_3__ GinBtreeStack ;
typedef TYPE_4__ GinBtreeData ;
typedef int BlockNumber ;


 int BufferGetBlockNumber (int ) ;
 int BufferGetPage (int ) ;
 int GIN_CAT_EMPTY_QUERY ;
 int GIN_UNLOCK ;
 int * GinDataLeafPageGetItems (int ,int*,int ) ;
 scalar_t__ GinGetNPosting (int ) ;
 int GinGetPostingTree (int ) ;
 scalar_t__ GinIsPostingTree (int ) ;
 int IncrBufferRefCount (int ) ;
 int InvalidBuffer ;
 int InvalidOffsetNumber ;
 int ItemPointerSetMin (int *) ;
 int LockBuffer (int ,int ) ;
 int PageGetItem (int ,int ) ;
 int PageGetItemId (int ,int ) ;
 int PredicateLockPage (int ,int ,int ) ;
 int collectMatchBitmap (TYPE_4__*,TYPE_3__*,TYPE_2__*,int ) ;
 int freeGinBtreeStack (TYPE_3__*) ;
 TYPE_3__* ginFindLeafPage (TYPE_4__*,int,int,int ) ;
 int ginPrepareEntryScan (TYPE_4__*,int ,int ,int ,TYPE_1__*) ;
 int * ginReadTuple (TYPE_1__*,int ,int ,int*) ;
 TYPE_3__* ginScanBeginPostingTree (int *,int ,int ,int ) ;
 int pfree (int *) ;
 scalar_t__ stub1 (TYPE_4__*,TYPE_3__*) ;
 scalar_t__ stub2 (TYPE_4__*,TYPE_3__*) ;
 int * tbm_begin_iterate (int *) ;
 int tbm_end_iterate (int *) ;
 int tbm_free (int *) ;
 int tbm_is_empty (int *) ;

__attribute__((used)) static void
startScanEntry(GinState *ginstate, GinScanEntry entry, Snapshot snapshot)
{
 GinBtreeData btreeEntry;
 GinBtreeStack *stackEntry;
 Page page;
 bool needUnlock;

restartScanEntry:
 entry->buffer = InvalidBuffer;
 ItemPointerSetMin(&entry->curItem);
 entry->offset = InvalidOffsetNumber;
 if (entry->list)
  pfree(entry->list);
 entry->list = ((void*)0);
 entry->nlist = 0;
 entry->matchBitmap = ((void*)0);
 entry->matchResult = ((void*)0);
 entry->reduceResult = 0;
 entry->predictNumberResult = 0;





 ginPrepareEntryScan(&btreeEntry, entry->attnum,
      entry->queryKey, entry->queryCategory,
      ginstate);
 stackEntry = ginFindLeafPage(&btreeEntry, 1, 0, snapshot);
 page = BufferGetPage(stackEntry->buffer);


 needUnlock = 1;

 entry->isFinished = 1;

 if (entry->isPartialMatch ||
  entry->queryCategory == GIN_CAT_EMPTY_QUERY)
 {







  btreeEntry.findItem(&btreeEntry, stackEntry);
  if (collectMatchBitmap(&btreeEntry, stackEntry, entry, snapshot)
   == 0)
  {





   if (entry->matchBitmap)
   {
    if (entry->matchIterator)
     tbm_end_iterate(entry->matchIterator);
    entry->matchIterator = ((void*)0);
    tbm_free(entry->matchBitmap);
    entry->matchBitmap = ((void*)0);
   }
   LockBuffer(stackEntry->buffer, GIN_UNLOCK);
   freeGinBtreeStack(stackEntry);
   goto restartScanEntry;
  }

  if (entry->matchBitmap && !tbm_is_empty(entry->matchBitmap))
  {
   entry->matchIterator = tbm_begin_iterate(entry->matchBitmap);
   entry->isFinished = 0;
  }
 }
 else if (btreeEntry.findItem(&btreeEntry, stackEntry))
 {
  IndexTuple itup = (IndexTuple) PageGetItem(page, PageGetItemId(page, stackEntry->off));

  if (GinIsPostingTree(itup))
  {
   BlockNumber rootPostingTree = GinGetPostingTree(itup);
   GinBtreeStack *stack;
   Page page;
   ItemPointerData minItem;






   PredicateLockPage(ginstate->index, rootPostingTree, snapshot);
   LockBuffer(stackEntry->buffer, GIN_UNLOCK);
   needUnlock = 0;

   stack = ginScanBeginPostingTree(&entry->btree, ginstate->index,
           rootPostingTree, snapshot);
   entry->buffer = stack->buffer;






   IncrBufferRefCount(entry->buffer);

   page = BufferGetPage(entry->buffer);




   ItemPointerSetMin(&minItem);
   entry->list = GinDataLeafPageGetItems(page, &entry->nlist, minItem);

   entry->predictNumberResult = stack->predictNumber * entry->nlist;

   LockBuffer(entry->buffer, GIN_UNLOCK);
   freeGinBtreeStack(stack);
   entry->isFinished = 0;
  }
  else
  {
   PredicateLockPage(ginstate->index,
         BufferGetBlockNumber(stackEntry->buffer),
         snapshot);
   if (GinGetNPosting(itup) > 0)
   {
    entry->list = ginReadTuple(ginstate, entry->attnum, itup,
             &entry->nlist);
    entry->predictNumberResult = entry->nlist;

    entry->isFinished = 0;
   }
  }
 }
 else
 {




  PredicateLockPage(ginstate->index,
        BufferGetBlockNumber(stackEntry->buffer), snapshot);
 }

 if (needUnlock)
  LockBuffer(stackEntry->buffer, GIN_UNLOCK);
 freeGinBtreeStack(stackEntry);
}
