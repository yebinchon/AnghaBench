
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_21__ {int tempCxt; } ;
struct TYPE_20__ {scalar_t__ bufferingMode; int indtuples; TYPE_1__* gfbb; TYPE_7__* giststate; int indtuplesSize; int heaprel; int freespace; } ;
struct TYPE_19__ {int t_tid; } ;
struct TYPE_18__ {int rd_smgr; } ;
struct TYPE_17__ {int levelStep; int pagesPerBuffer; } ;
typedef TYPE_2__* Relation ;
typedef int MemoryContext ;
typedef int * ItemPointer ;
typedef TYPE_3__* IndexTuple ;
typedef TYPE_4__ GISTBuildState ;
typedef int Datum ;


 int BUFFERING_MODE_SWITCH_CHECK_STEP ;
 int BUFFERING_MODE_TUPLE_SIZE_STATS_TARGET ;
 scalar_t__ GIST_BUFFERING_ACTIVE ;
 scalar_t__ GIST_BUFFERING_AUTO ;
 scalar_t__ GIST_BUFFERING_STATS ;
 scalar_t__ IndexTupleSize (TYPE_3__*) ;
 int MAIN_FORKNUM ;
 int MemoryContextReset (int ) ;
 int MemoryContextSwitchTo (int ) ;
 int calculatePagesPerBuffer (TYPE_4__*,int ) ;
 scalar_t__ effective_cache_size ;
 int gistBufferingBuildInsert (TYPE_4__*,TYPE_3__*) ;
 TYPE_3__* gistFormTuple (TYPE_7__*,TYPE_2__*,int *,int*,int) ;
 int gistInitBuffering (TYPE_4__*) ;
 int gistdoinsert (TYPE_2__*,TYPE_3__*,int ,TYPE_7__*,int ,int) ;
 scalar_t__ smgrnblocks (int ,int ) ;

__attribute__((used)) static void
gistBuildCallback(Relation index,
      ItemPointer tid,
      Datum *values,
      bool *isnull,
      bool tupleIsAlive,
      void *state)
{
 GISTBuildState *buildstate = (GISTBuildState *) state;
 IndexTuple itup;
 MemoryContext oldCtx;

 oldCtx = MemoryContextSwitchTo(buildstate->giststate->tempCxt);


 itup = gistFormTuple(buildstate->giststate, index, values, isnull, 1);
 itup->t_tid = *tid;

 if (buildstate->bufferingMode == GIST_BUFFERING_ACTIVE)
 {

  gistBufferingBuildInsert(buildstate, itup);
 }
 else
 {




  gistdoinsert(index, itup, buildstate->freespace,
      buildstate->giststate, buildstate->heaprel, 1);
 }


 buildstate->indtuples += 1;
 buildstate->indtuplesSize += IndexTupleSize(itup);

 MemoryContextSwitchTo(oldCtx);
 MemoryContextReset(buildstate->giststate->tempCxt);

 if (buildstate->bufferingMode == GIST_BUFFERING_ACTIVE &&
  buildstate->indtuples % BUFFERING_MODE_TUPLE_SIZE_STATS_TARGET == 0)
 {

  buildstate->gfbb->pagesPerBuffer =
   calculatePagesPerBuffer(buildstate, buildstate->gfbb->levelStep);
 }
 if ((buildstate->bufferingMode == GIST_BUFFERING_AUTO &&
   buildstate->indtuples % BUFFERING_MODE_SWITCH_CHECK_STEP == 0 &&
   effective_cache_size < smgrnblocks(index->rd_smgr, MAIN_FORKNUM)) ||
  (buildstate->bufferingMode == GIST_BUFFERING_STATS &&
   buildstate->indtuples >= BUFFERING_MODE_TUPLE_SIZE_STATS_TARGET))
 {




  gistInitBuffering(buildstate);
 }
}
