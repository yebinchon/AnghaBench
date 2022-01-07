
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t int32 ;
typedef int OffsetNumber ;
typedef int ItemPointer ;
typedef int GinState ;
typedef int GinNullCategory ;
typedef int Datum ;


 int ginEntryInsert (int *,int ,int ,int ,int ,int,int *) ;
 int * ginExtractEntries (int *,int ,int ,int,size_t*,int **) ;

__attribute__((used)) static void
ginHeapTupleInsert(GinState *ginstate, OffsetNumber attnum,
       Datum value, bool isNull,
       ItemPointer item)
{
 Datum *entries;
 GinNullCategory *categories;
 int32 i,
    nentries;

 entries = ginExtractEntries(ginstate, attnum, value, isNull,
        &nentries, &categories);

 for (i = 0; i < nentries; i++)
  ginEntryInsert(ginstate, attnum, entries[i], categories[i],
        item, 1, ((void*)0));
}
