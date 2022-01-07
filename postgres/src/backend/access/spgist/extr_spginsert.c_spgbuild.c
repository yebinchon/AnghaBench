
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int isBuild; } ;
struct TYPE_6__ {double heap_tuples; scalar_t__ index_tuples; } ;
struct TYPE_5__ {scalar_t__ indtuples; int tmpCtx; TYPE_4__ spgstate; } ;
typedef TYPE_1__ SpGistBuildState ;
typedef int Relation ;
typedef int IndexInfo ;
typedef TYPE_2__ IndexBuildResult ;
typedef int Buffer ;


 int ALLOCSET_DEFAULT_SIZES ;
 int AllocSetContextCreate (int ,char*,int ) ;
 int Assert (int) ;
 scalar_t__ BufferGetBlockNumber (int ) ;
 int BufferGetPage (int ) ;
 int CurrentMemoryContext ;
 int END_CRIT_SECTION () ;
 int ERROR ;
 int MAIN_FORKNUM ;
 int MarkBufferDirty (int ) ;
 int MemoryContextDelete (int ) ;
 scalar_t__ RelationGetNumberOfBlocks (int ) ;
 int RelationGetRelationName (int ) ;
 scalar_t__ RelationNeedsWAL (int ) ;
 int SPGIST_LEAF ;
 scalar_t__ SPGIST_METAPAGE_BLKNO ;
 int SPGIST_NULLS ;
 scalar_t__ SPGIST_NULL_BLKNO ;
 scalar_t__ SPGIST_ROOT_BLKNO ;
 int START_CRIT_SECTION () ;
 int SpGistInitBuffer (int ,int) ;
 int SpGistInitMetapage (int ) ;
 int SpGistNewBuffer (int ) ;
 int SpGistUpdateMetaPage (int ) ;
 int UnlockReleaseBuffer (int ) ;
 int elog (int ,char*,int ) ;
 int initSpGistState (TYPE_4__*,int ) ;
 int log_newpage_range (int ,int ,int ,scalar_t__,int) ;
 scalar_t__ palloc0 (int) ;
 int spgistBuildCallback ;
 double table_index_build_scan (int ,int ,int *,int,int,int ,void*,int *) ;

IndexBuildResult *
spgbuild(Relation heap, Relation index, IndexInfo *indexInfo)
{
 IndexBuildResult *result;
 double reltuples;
 SpGistBuildState buildstate;
 Buffer metabuffer,
    rootbuffer,
    nullbuffer;

 if (RelationGetNumberOfBlocks(index) != 0)
  elog(ERROR, "index \"%s\" already contains data",
    RelationGetRelationName(index));




 metabuffer = SpGistNewBuffer(index);
 rootbuffer = SpGistNewBuffer(index);
 nullbuffer = SpGistNewBuffer(index);

 Assert(BufferGetBlockNumber(metabuffer) == SPGIST_METAPAGE_BLKNO);
 Assert(BufferGetBlockNumber(rootbuffer) == SPGIST_ROOT_BLKNO);
 Assert(BufferGetBlockNumber(nullbuffer) == SPGIST_NULL_BLKNO);

 START_CRIT_SECTION();

 SpGistInitMetapage(BufferGetPage(metabuffer));
 MarkBufferDirty(metabuffer);
 SpGistInitBuffer(rootbuffer, SPGIST_LEAF);
 MarkBufferDirty(rootbuffer);
 SpGistInitBuffer(nullbuffer, SPGIST_LEAF | SPGIST_NULLS);
 MarkBufferDirty(nullbuffer);


 END_CRIT_SECTION();

 UnlockReleaseBuffer(metabuffer);
 UnlockReleaseBuffer(rootbuffer);
 UnlockReleaseBuffer(nullbuffer);




 initSpGistState(&buildstate.spgstate, index);
 buildstate.spgstate.isBuild = 1;
 buildstate.indtuples = 0;

 buildstate.tmpCtx = AllocSetContextCreate(CurrentMemoryContext,
             "SP-GiST build temporary context",
             ALLOCSET_DEFAULT_SIZES);

 reltuples = table_index_build_scan(heap, index, indexInfo, 1, 1,
            spgistBuildCallback, (void *) &buildstate,
            ((void*)0));

 MemoryContextDelete(buildstate.tmpCtx);

 SpGistUpdateMetaPage(index);





 if (RelationNeedsWAL(index))
 {
  log_newpage_range(index, MAIN_FORKNUM,
        0, RelationGetNumberOfBlocks(index),
        1);
 }

 result = (IndexBuildResult *) palloc0(sizeof(IndexBuildResult));
 result->heap_tuples = reltuples;
 result->index_tuples = buildstate.indtuples;

 return result;
}
