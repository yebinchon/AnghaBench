
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_7__ {int index; } ;
typedef int OffsetNumber ;
typedef int ItemPointerData ;
typedef int * IndexTuple ;
typedef int GinStatsData ;
typedef TYPE_1__ GinState ;
typedef int GinPostingList ;
typedef int GinNullCategory ;
typedef int Datum ;
typedef int Buffer ;
typedef int BlockNumber ;


 int Assert (int) ;
 int * GinFormTuple (TYPE_1__*,int ,int ,int ,char*,int ,int,int) ;
 int GinIsPostingTree (int *) ;
 int GinMaxItemSize ;
 int GinSetPostingTree (int *,int ) ;
 int SizeOfGinPostingList (int *) ;
 int createPostingTree (int ,int *,int,int *,int ) ;
 int * ginCompressPostingList (int *,int,int ,int *) ;
 int ginInsertItemPointers (int ,int ,int *,int ,int *) ;
 int * ginMergeItemPointers (int *,int ,int *,int,int*) ;
 int * ginReadTuple (TYPE_1__*,int ,int *,int*) ;
 int gintuple_get_attrnum (TYPE_1__*,int *) ;
 int gintuple_get_key (TYPE_1__*,int *,int *) ;
 int pfree (int *) ;

__attribute__((used)) static IndexTuple
addItemPointersToLeafTuple(GinState *ginstate,
         IndexTuple old,
         ItemPointerData *items, uint32 nitem,
         GinStatsData *buildStats, Buffer buffer)
{
 OffsetNumber attnum;
 Datum key;
 GinNullCategory category;
 IndexTuple res;
 ItemPointerData *newItems,
      *oldItems;
 int oldNPosting,
    newNPosting;
 GinPostingList *compressedList;

 Assert(!GinIsPostingTree(old));

 attnum = gintuple_get_attrnum(ginstate, old);
 key = gintuple_get_key(ginstate, old, &category);


 oldItems = ginReadTuple(ginstate, attnum, old, &oldNPosting);

 newItems = ginMergeItemPointers(items, nitem,
         oldItems, oldNPosting,
         &newNPosting);


 res = ((void*)0);
 compressedList = ginCompressPostingList(newItems, newNPosting, GinMaxItemSize,
           ((void*)0));
 pfree(newItems);
 if (compressedList)
 {
  res = GinFormTuple(ginstate, attnum, key, category,
         (char *) compressedList,
         SizeOfGinPostingList(compressedList),
         newNPosting,
         0);
  pfree(compressedList);
 }
 if (!res)
 {

  BlockNumber postingRoot;






  postingRoot = createPostingTree(ginstate->index,
          oldItems,
          oldNPosting,
          buildStats,
          buffer);


  ginInsertItemPointers(ginstate->index, postingRoot,
         items, nitem,
         buildStats);


  res = GinFormTuple(ginstate, attnum, key, category, ((void*)0), 0, 0, 1);
  GinSetPostingTree(res, postingRoot);
 }
 pfree(oldItems);

 return res;
}
