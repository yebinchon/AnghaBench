
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {TYPE_1__* origTupdesc; } ;
struct TYPE_10__ {void* ii_AmCache; int ii_Context; } ;
struct TYPE_9__ {int natts; } ;
typedef int Relation ;
typedef int OffsetNumber ;
typedef int MemoryContext ;
typedef int ItemPointer ;
typedef int IndexUniqueCheck ;
typedef TYPE_2__ IndexInfo ;
typedef int GinTupleCollector ;
typedef TYPE_3__ GinState ;
typedef int Datum ;


 int ALLOCSET_DEFAULT_SIZES ;
 int AllocSetContextCreate (int ,char*,int ) ;
 int CurrentMemoryContext ;
 scalar_t__ GinGetUseFastUpdate (int ) ;
 int MemoryContextDelete (int ) ;
 int MemoryContextSwitchTo (int ) ;
 int ginHeapTupleFastCollect (TYPE_3__*,int *,int ,int ,int,int ) ;
 int ginHeapTupleFastInsert (TYPE_3__*,int *) ;
 int ginHeapTupleInsert (TYPE_3__*,int ,int ,int,int ) ;
 int initGinState (TYPE_3__*,int ) ;
 int memset (int *,int ,int) ;
 scalar_t__ palloc (int) ;

bool
gininsert(Relation index, Datum *values, bool *isnull,
    ItemPointer ht_ctid, Relation heapRel,
    IndexUniqueCheck checkUnique,
    IndexInfo *indexInfo)
{
 GinState *ginstate = (GinState *) indexInfo->ii_AmCache;
 MemoryContext oldCtx;
 MemoryContext insertCtx;
 int i;


 if (ginstate == ((void*)0))
 {
  oldCtx = MemoryContextSwitchTo(indexInfo->ii_Context);
  ginstate = (GinState *) palloc(sizeof(GinState));
  initGinState(ginstate, index);
  indexInfo->ii_AmCache = (void *) ginstate;
  MemoryContextSwitchTo(oldCtx);
 }

 insertCtx = AllocSetContextCreate(CurrentMemoryContext,
           "Gin insert temporary context",
           ALLOCSET_DEFAULT_SIZES);

 oldCtx = MemoryContextSwitchTo(insertCtx);

 if (GinGetUseFastUpdate(index))
 {
  GinTupleCollector collector;

  memset(&collector, 0, sizeof(GinTupleCollector));

  for (i = 0; i < ginstate->origTupdesc->natts; i++)
   ginHeapTupleFastCollect(ginstate, &collector,
         (OffsetNumber) (i + 1),
         values[i], isnull[i],
         ht_ctid);

  ginHeapTupleFastInsert(ginstate, &collector);
 }
 else
 {
  for (i = 0; i < ginstate->origTupdesc->natts; i++)
   ginHeapTupleInsert(ginstate, (OffsetNumber) (i + 1),
          values[i], isnull[i],
          ht_ctid);
 }

 MemoryContextSwitchTo(oldCtx);
 MemoryContextDelete(insertCtx);

 return 0;
}
