
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_28__ {scalar_t__ (* findItem ) (TYPE_5__*,TYPE_3__*) ;int isBuild; } ;
struct TYPE_27__ {int isDelete; scalar_t__ entry; } ;
struct TYPE_26__ {int buffer; int off; } ;
struct TYPE_25__ {int index; } ;
struct TYPE_24__ {int nEntries; } ;
typedef int Page ;
typedef int OffsetNumber ;
typedef int ItemPointerData ;
typedef scalar_t__ IndexTuple ;
typedef TYPE_1__ GinStatsData ;
typedef TYPE_2__ GinState ;
typedef int GinNullCategory ;
typedef TYPE_3__ GinBtreeStack ;
typedef TYPE_4__ GinBtreeEntryInsertData ;
typedef TYPE_5__ GinBtreeData ;
typedef int Datum ;
typedef int BlockNumber ;


 int BufferGetPage (int ) ;
 int CheckForSerializableConflictIn (int ,int *,int ) ;
 int GIN_UNLOCK ;
 int GinGetPostingTree (scalar_t__) ;
 scalar_t__ GinIsPostingTree (scalar_t__) ;
 int LockBuffer (int ,int ) ;
 scalar_t__ PageGetItem (int ,int ) ;
 int PageGetItemId (int ,int ) ;
 scalar_t__ addItemPointersToLeafTuple (TYPE_2__*,scalar_t__,int *,int ,TYPE_1__*,int ) ;
 scalar_t__ buildFreshLeafTuple (TYPE_2__*,int ,int ,int ,int *,int ,TYPE_1__*,int ) ;
 int freeGinBtreeStack (TYPE_3__*) ;
 TYPE_3__* ginFindLeafPage (TYPE_5__*,int,int,int *) ;
 int ginInsertItemPointers (int ,int ,int *,int ,TYPE_1__*) ;
 int ginInsertValue (TYPE_5__*,TYPE_3__*,TYPE_4__*,TYPE_1__*) ;
 int ginPrepareEntryScan (TYPE_5__*,int ,int ,int ,TYPE_2__*) ;
 int pfree (scalar_t__) ;
 scalar_t__ stub1 (TYPE_5__*,TYPE_3__*) ;

void
ginEntryInsert(GinState *ginstate,
      OffsetNumber attnum, Datum key, GinNullCategory category,
      ItemPointerData *items, uint32 nitem,
      GinStatsData *buildStats)
{
 GinBtreeData btree;
 GinBtreeEntryInsertData insertdata;
 GinBtreeStack *stack;
 IndexTuple itup;
 Page page;

 insertdata.isDelete = 0;

 ginPrepareEntryScan(&btree, attnum, key, category, ginstate);
 btree.isBuild = (buildStats != ((void*)0));

 stack = ginFindLeafPage(&btree, 0, 0, ((void*)0));
 page = BufferGetPage(stack->buffer);

 if (btree.findItem(&btree, stack))
 {

  itup = (IndexTuple) PageGetItem(page, PageGetItemId(page, stack->off));

  if (GinIsPostingTree(itup))
  {

   BlockNumber rootPostingTree = GinGetPostingTree(itup);


   LockBuffer(stack->buffer, GIN_UNLOCK);
   freeGinBtreeStack(stack);


   ginInsertItemPointers(ginstate->index, rootPostingTree,
          items, nitem,
          buildStats);
   return;
  }

  CheckForSerializableConflictIn(ginstate->index, ((void*)0), stack->buffer);

  itup = addItemPointersToLeafTuple(ginstate, itup,
            items, nitem, buildStats, stack->buffer);

  insertdata.isDelete = 1;
 }
 else
 {
  CheckForSerializableConflictIn(ginstate->index, ((void*)0), stack->buffer);

  itup = buildFreshLeafTuple(ginstate, attnum, key, category,
           items, nitem, buildStats, stack->buffer);





  if (buildStats)
   buildStats->nEntries++;
 }


 insertdata.entry = itup;
 ginInsertValue(&btree, stack, &insertdata, buildStats);
 pfree(itup);
}
