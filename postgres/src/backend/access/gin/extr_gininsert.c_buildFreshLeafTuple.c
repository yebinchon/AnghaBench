
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_4__ {int index; } ;
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


 int * GinFormTuple (TYPE_1__*,int ,int ,int ,char*,int ,int ,int) ;
 int GinMaxItemSize ;
 int GinSetPostingTree (int *,int ) ;
 int SizeOfGinPostingList (int *) ;
 int createPostingTree (int ,int *,int ,int *,int ) ;
 int * ginCompressPostingList (int *,int ,int ,int *) ;
 int pfree (int *) ;

__attribute__((used)) static IndexTuple
buildFreshLeafTuple(GinState *ginstate,
     OffsetNumber attnum, Datum key, GinNullCategory category,
     ItemPointerData *items, uint32 nitem,
     GinStatsData *buildStats, Buffer buffer)
{
 IndexTuple res = ((void*)0);
 GinPostingList *compressedList;


 compressedList = ginCompressPostingList(items, nitem, GinMaxItemSize, ((void*)0));
 if (compressedList)
 {
  res = GinFormTuple(ginstate, attnum, key, category,
         (char *) compressedList,
         SizeOfGinPostingList(compressedList),
         nitem, 0);
  pfree(compressedList);
 }
 if (!res)
 {

  BlockNumber postingRoot;





  res = GinFormTuple(ginstate, attnum, key, category, ((void*)0), 0, 0, 1);




  postingRoot = createPostingTree(ginstate->index, items, nitem,
          buildStats, buffer);


  GinSetPostingTree(res, postingRoot);
 }

 return res;
}
