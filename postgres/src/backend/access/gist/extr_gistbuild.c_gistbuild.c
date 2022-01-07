
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_23__ {int tempCxt; } ;
struct TYPE_22__ {scalar_t__ bufferingMode; int freespace; scalar_t__ indtuples; TYPE_8__* giststate; int gfbb; scalar_t__ indtuplesSize; TYPE_1__* heaprel; TYPE_1__* indexrel; } ;
struct TYPE_21__ {scalar_t__ buffering_mode; int fillfactor; } ;
struct TYPE_20__ {double heap_tuples; double index_tuples; } ;
struct TYPE_19__ {scalar_t__ rd_options; } ;
typedef TYPE_1__* Relation ;
typedef int Page ;
typedef int MemoryContext ;
typedef int IndexInfo ;
typedef TYPE_2__ IndexBuildResult ;
typedef TYPE_3__ GiSTOptions ;
typedef TYPE_4__ GISTBuildState ;
typedef int Buffer ;


 int Assert (int) ;
 int BLCKSZ ;
 scalar_t__ BufferGetBlockNumber (int ) ;
 int BufferGetPage (int ) ;
 int CurrentMemoryContext ;
 int DEBUG1 ;
 int END_CRIT_SECTION () ;
 int ERROR ;
 int F_LEAF ;
 int GISTInitBuffer (int ,int ) ;
 scalar_t__ GIST_BUFFERING_ACTIVE ;
 void* GIST_BUFFERING_AUTO ;
 scalar_t__ GIST_BUFFERING_DISABLED ;
 scalar_t__ GIST_BUFFERING_STATS ;
 int GIST_DEFAULT_FILLFACTOR ;
 scalar_t__ GIST_OPTION_BUFFERING_OFF ;
 scalar_t__ GIST_OPTION_BUFFERING_ON ;
 scalar_t__ GIST_ROOT_BLKNO ;
 int GistBuildLSN ;
 int MAIN_FORKNUM ;
 int MarkBufferDirty (int ) ;
 int MemoryContextDelete (int ) ;
 int MemoryContextSwitchTo (int ) ;
 int PageSetLSN (int ,int ) ;
 scalar_t__ RelationGetNumberOfBlocks (TYPE_1__*) ;
 int RelationGetRelationName (TYPE_1__*) ;
 scalar_t__ RelationNeedsWAL (TYPE_1__*) ;
 int START_CRIT_SECTION () ;
 int UnlockReleaseBuffer (int ) ;
 int createTempGistContext () ;
 int elog (int ,char*,...) ;
 int freeGISTstate (TYPE_8__*) ;
 int gistBuildCallback ;
 int gistEmptyAllBuffers (TYPE_4__*) ;
 int gistFreeBuildBuffers (int ) ;
 int gistNewBuffer (TYPE_1__*) ;
 TYPE_8__* initGISTstate (TYPE_1__*) ;
 int log_newpage_range (TYPE_1__*,int ,int ,scalar_t__,int) ;
 scalar_t__ palloc (int) ;
 double table_index_build_scan (TYPE_1__*,TYPE_1__*,int *,int,int,int ,void*,int *) ;

IndexBuildResult *
gistbuild(Relation heap, Relation index, IndexInfo *indexInfo)
{
 IndexBuildResult *result;
 double reltuples;
 GISTBuildState buildstate;
 Buffer buffer;
 Page page;
 MemoryContext oldcxt = CurrentMemoryContext;
 int fillfactor;

 buildstate.indexrel = index;
 buildstate.heaprel = heap;

 if (index->rd_options)
 {

  GiSTOptions *options = (GiSTOptions *) index->rd_options;

  if (options->buffering_mode == GIST_OPTION_BUFFERING_ON)
   buildstate.bufferingMode = GIST_BUFFERING_STATS;
  else if (options->buffering_mode == GIST_OPTION_BUFFERING_OFF)
   buildstate.bufferingMode = GIST_BUFFERING_DISABLED;
  else
   buildstate.bufferingMode = GIST_BUFFERING_AUTO;

  fillfactor = options->fillfactor;
 }
 else
 {




  buildstate.bufferingMode = GIST_BUFFERING_AUTO;
  fillfactor = GIST_DEFAULT_FILLFACTOR;
 }

 buildstate.freespace = BLCKSZ * (100 - fillfactor) / 100;





 if (RelationGetNumberOfBlocks(index) != 0)
  elog(ERROR, "index \"%s\" already contains data",
    RelationGetRelationName(index));


 buildstate.giststate = initGISTstate(index);






 buildstate.giststate->tempCxt = createTempGistContext();


 buffer = gistNewBuffer(index);
 Assert(BufferGetBlockNumber(buffer) == GIST_ROOT_BLKNO);
 page = BufferGetPage(buffer);

 START_CRIT_SECTION();

 GISTInitBuffer(buffer, F_LEAF);

 MarkBufferDirty(buffer);
 PageSetLSN(page, GistBuildLSN);

 UnlockReleaseBuffer(buffer);

 END_CRIT_SECTION();


 buildstate.indtuples = 0;
 buildstate.indtuplesSize = 0;




 reltuples = table_index_build_scan(heap, index, indexInfo, 1, 1,
            gistBuildCallback,
            (void *) &buildstate, ((void*)0));





 if (buildstate.bufferingMode == GIST_BUFFERING_ACTIVE)
 {
  elog(DEBUG1, "all tuples processed, emptying buffers");
  gistEmptyAllBuffers(&buildstate);
  gistFreeBuildBuffers(buildstate.gfbb);
 }


 MemoryContextSwitchTo(oldcxt);
 MemoryContextDelete(buildstate.giststate->tempCxt);

 freeGISTstate(buildstate.giststate);





 if (RelationNeedsWAL(index))
 {
  log_newpage_range(index, MAIN_FORKNUM,
        0, RelationGetNumberOfBlocks(index),
        1);
 }




 result = (IndexBuildResult *) palloc(sizeof(IndexBuildResult));

 result->heap_tuples = reltuples;
 result->index_tuples = (double) buildstate.indtuples;

 return result;
}
