
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int buildstate ;
struct TYPE_8__ {scalar_t__ count; int indtuples; int tmpCtx; int blstate; } ;
struct TYPE_7__ {double heap_tuples; int index_tuples; } ;
typedef int Relation ;
typedef int IndexInfo ;
typedef TYPE_1__ IndexBuildResult ;
typedef TYPE_2__ BloomBuildState ;


 int ALLOCSET_DEFAULT_SIZES ;
 int AllocSetContextCreate (int ,char*,int ) ;
 int BloomInitMetapage (int ) ;
 int CurrentMemoryContext ;
 int ERROR ;
 int MemoryContextDelete (int ) ;
 scalar_t__ RelationGetNumberOfBlocks (int ) ;
 int RelationGetRelationName (int ) ;
 int bloomBuildCallback ;
 int elog (int ,char*,int ) ;
 int flushCachedPage (int ,TYPE_2__*) ;
 int initBloomState (int *,int ) ;
 int initCachedPage (TYPE_2__*) ;
 int memset (TYPE_2__*,int ,int) ;
 scalar_t__ palloc (int) ;
 double table_index_build_scan (int ,int ,int *,int,int,int ,void*,int *) ;

IndexBuildResult *
blbuild(Relation heap, Relation index, IndexInfo *indexInfo)
{
 IndexBuildResult *result;
 double reltuples;
 BloomBuildState buildstate;

 if (RelationGetNumberOfBlocks(index) != 0)
  elog(ERROR, "index \"%s\" already contains data",
    RelationGetRelationName(index));


 BloomInitMetapage(index);


 memset(&buildstate, 0, sizeof(buildstate));
 initBloomState(&buildstate.blstate, index);
 buildstate.tmpCtx = AllocSetContextCreate(CurrentMemoryContext,
             "Bloom build temporary context",
             ALLOCSET_DEFAULT_SIZES);
 initCachedPage(&buildstate);


 reltuples = table_index_build_scan(heap, index, indexInfo, 1, 1,
            bloomBuildCallback, (void *) &buildstate,
            ((void*)0));


 if (buildstate.count > 0)
  flushCachedPage(index, &buildstate);

 MemoryContextDelete(buildstate.tmpCtx);

 result = (IndexBuildResult *) palloc(sizeof(IndexBuildResult));
 result->heap_tuples = reltuples;
 result->index_tuples = buildstate.indtuples;

 return result;
}
