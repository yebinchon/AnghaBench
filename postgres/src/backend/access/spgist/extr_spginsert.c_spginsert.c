
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SpGistState ;
typedef int Relation ;
typedef int MemoryContext ;
typedef int ItemPointer ;
typedef int IndexUniqueCheck ;
typedef int IndexInfo ;
typedef int Datum ;


 int ALLOCSET_DEFAULT_SIZES ;
 int AllocSetContextCreate (int ,char*,int ) ;
 int CurrentMemoryContext ;
 int MemoryContextDelete (int ) ;
 int MemoryContextReset (int ) ;
 int MemoryContextSwitchTo (int ) ;
 int SpGistUpdateMetaPage (int ) ;
 int initSpGistState (int *,int ) ;
 int spgdoinsert (int ,int *,int ,int ,int) ;

bool
spginsert(Relation index, Datum *values, bool *isnull,
    ItemPointer ht_ctid, Relation heapRel,
    IndexUniqueCheck checkUnique,
    IndexInfo *indexInfo)
{
 SpGistState spgstate;
 MemoryContext oldCtx;
 MemoryContext insertCtx;

 insertCtx = AllocSetContextCreate(CurrentMemoryContext,
           "SP-GiST insert temporary context",
           ALLOCSET_DEFAULT_SIZES);
 oldCtx = MemoryContextSwitchTo(insertCtx);

 initSpGistState(&spgstate, index);







 while (!spgdoinsert(index, &spgstate, ht_ctid, *values, *isnull))
 {
  MemoryContextReset(insertCtx);
  initSpGistState(&spgstate, index);
 }

 SpGistUpdateMetaPage(index);

 MemoryContextSwitchTo(oldCtx);
 MemoryContextDelete(insertCtx);


 return 0;
}
