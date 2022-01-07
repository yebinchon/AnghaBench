
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_13__ {int * ginstate; } ;
struct TYPE_12__ {scalar_t__ nTotalPages; int nEntryPages; } ;
struct TYPE_11__ {scalar_t__ indtuples; TYPE_3__ buildStats; void* tmpCtx; void* funcCtx; int ginstate; TYPE_6__ accum; } ;
struct TYPE_10__ {double heap_tuples; scalar_t__ index_tuples; } ;
typedef int Relation ;
typedef int OffsetNumber ;
typedef void* MemoryContext ;
typedef int ItemPointerData ;
typedef int IndexInfo ;
typedef TYPE_1__ IndexBuildResult ;
typedef int GinStatsData ;
typedef int GinNullCategory ;
typedef TYPE_2__ GinBuildState ;
typedef int Datum ;
typedef int Buffer ;


 int ALLOCSET_DEFAULT_SIZES ;
 void* AllocSetContextCreate (int ,char*,int ) ;
 int CHECK_FOR_INTERRUPTS () ;
 int CurrentMemoryContext ;
 int END_CRIT_SECTION () ;
 int ERROR ;
 int GIN_LEAF ;
 int GinInitBuffer (int ,int ) ;
 int GinInitMetabuffer (int ) ;
 int GinNewBuffer (int ) ;
 int MAIN_FORKNUM ;
 int MarkBufferDirty (int ) ;
 int MemoryContextDelete (void*) ;
 void* MemoryContextSwitchTo (void*) ;
 scalar_t__ RelationGetNumberOfBlocks (int ) ;
 int RelationGetRelationName (int ) ;
 scalar_t__ RelationNeedsWAL (int ) ;
 int START_CRIT_SECTION () ;
 int UnlockReleaseBuffer (int ) ;
 int elog (int ,char*,int ) ;
 int ginBeginBAScan (TYPE_6__*) ;
 int ginBuildCallback ;
 int ginEntryInsert (int *,int ,int ,int ,int *,int ,TYPE_3__*) ;
 int * ginGetBAEntry (TYPE_6__*,int *,int *,int *,int *) ;
 int ginInitBA (TYPE_6__*) ;
 int ginUpdateStats (int ,TYPE_3__*,int) ;
 int initGinState (int *,int ) ;
 int log_newpage_range (int ,int ,int ,scalar_t__,int) ;
 int memset (TYPE_3__*,int ,int) ;
 scalar_t__ palloc (int) ;
 double table_index_build_scan (int ,int ,int *,int,int,int ,void*,int *) ;

IndexBuildResult *
ginbuild(Relation heap, Relation index, IndexInfo *indexInfo)
{
 IndexBuildResult *result;
 double reltuples;
 GinBuildState buildstate;
 Buffer RootBuffer,
    MetaBuffer;
 ItemPointerData *list;
 Datum key;
 GinNullCategory category;
 uint32 nlist;
 MemoryContext oldCtx;
 OffsetNumber attnum;

 if (RelationGetNumberOfBlocks(index) != 0)
  elog(ERROR, "index \"%s\" already contains data",
    RelationGetRelationName(index));

 initGinState(&buildstate.ginstate, index);
 buildstate.indtuples = 0;
 memset(&buildstate.buildStats, 0, sizeof(GinStatsData));


 MetaBuffer = GinNewBuffer(index);


 RootBuffer = GinNewBuffer(index);

 START_CRIT_SECTION();
 GinInitMetabuffer(MetaBuffer);
 MarkBufferDirty(MetaBuffer);
 GinInitBuffer(RootBuffer, GIN_LEAF);
 MarkBufferDirty(RootBuffer);


 UnlockReleaseBuffer(MetaBuffer);
 UnlockReleaseBuffer(RootBuffer);
 END_CRIT_SECTION();


 buildstate.buildStats.nEntryPages++;





 buildstate.tmpCtx = AllocSetContextCreate(CurrentMemoryContext,
             "Gin build temporary context",
             ALLOCSET_DEFAULT_SIZES);





 buildstate.funcCtx = AllocSetContextCreate(CurrentMemoryContext,
              "Gin build temporary context for user-defined function",
              ALLOCSET_DEFAULT_SIZES);

 buildstate.accum.ginstate = &buildstate.ginstate;
 ginInitBA(&buildstate.accum);





 reltuples = table_index_build_scan(heap, index, indexInfo, 0, 1,
            ginBuildCallback, (void *) &buildstate,
            ((void*)0));


 oldCtx = MemoryContextSwitchTo(buildstate.tmpCtx);
 ginBeginBAScan(&buildstate.accum);
 while ((list = ginGetBAEntry(&buildstate.accum,
         &attnum, &key, &category, &nlist)) != ((void*)0))
 {

  CHECK_FOR_INTERRUPTS();
  ginEntryInsert(&buildstate.ginstate, attnum, key, category,
        list, nlist, &buildstate.buildStats);
 }
 MemoryContextSwitchTo(oldCtx);

 MemoryContextDelete(buildstate.funcCtx);
 MemoryContextDelete(buildstate.tmpCtx);




 buildstate.buildStats.nTotalPages = RelationGetNumberOfBlocks(index);
 ginUpdateStats(index, &buildstate.buildStats, 1);





 if (RelationNeedsWAL(index))
 {
  log_newpage_range(index, MAIN_FORKNUM,
        0, RelationGetNumberOfBlocks(index),
        1);
 }




 result = (IndexBuildResult *) palloc(sizeof(IndexBuildResult));

 result->heap_tuples = reltuples;
 result->index_tuples = buildstate.indtuples;

 return result;
}
