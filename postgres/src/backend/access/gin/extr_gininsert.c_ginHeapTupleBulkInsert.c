
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ int32 ;
struct TYPE_5__ {int ginstate; } ;
struct TYPE_4__ {int funcCtx; int indtuples; TYPE_2__ accum; } ;
typedef int OffsetNumber ;
typedef int MemoryContext ;
typedef int ItemPointer ;
typedef int GinNullCategory ;
typedef TYPE_1__ GinBuildState ;
typedef int Datum ;


 int MemoryContextReset (int ) ;
 int MemoryContextSwitchTo (int ) ;
 int * ginExtractEntries (int ,int ,int ,int,scalar_t__*,int **) ;
 int ginInsertBAEntries (TYPE_2__*,int ,int ,int *,int *,scalar_t__) ;

__attribute__((used)) static void
ginHeapTupleBulkInsert(GinBuildState *buildstate, OffsetNumber attnum,
        Datum value, bool isNull,
        ItemPointer heapptr)
{
 Datum *entries;
 GinNullCategory *categories;
 int32 nentries;
 MemoryContext oldCtx;

 oldCtx = MemoryContextSwitchTo(buildstate->funcCtx);
 entries = ginExtractEntries(buildstate->accum.ginstate, attnum,
        value, isNull,
        &nentries, &categories);
 MemoryContextSwitchTo(oldCtx);

 ginInsertBAEntries(&buildstate->accum, heapptr, attnum,
        entries, categories, nentries);

 buildstate->indtuples += nentries;

 MemoryContextReset(buildstate->funcCtx);
}
