
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int bs_bdesc; int bs_dtuple; } ;
typedef int Relation ;
typedef int OffsetNumber ;
typedef int IndexInfo ;
typedef int Buffer ;
typedef int BrinTuple ;
typedef int BrinRevmap ;
typedef TYPE_1__ BrinBuildState ;
typedef int BlockNumber ;


 int Assert (int) ;
 int BRIN_ALL_BLOCKRANGES ;
 int BUFFER_LOCK_SHARE ;
 int BUFFER_LOCK_UNLOCK ;
 scalar_t__ BufferIsValid (int ) ;
 int * BuildIndexInfo (int ) ;
 int CHECK_FOR_INTERRUPTS () ;
 int InvalidBuffer ;
 int LockBuffer (int ,int ) ;
 int Min (int,int) ;
 int RelationGetNumberOfBlocks (int ) ;
 int ReleaseBuffer (int ) ;
 int * brinGetTupleForHeapBlock (int *,int,int *,int *,int *,int ,int *) ;
 int * brinRevmapInitialize (int ,int*,int *) ;
 int brinRevmapTerminate (int *) ;
 int brin_memtuple_initialize (int ,int ) ;
 TYPE_1__* initialize_brin_buildstate (int ,int *,int) ;
 int pfree (int *) ;
 int summarize_range (int *,TYPE_1__*,int ,int,int) ;
 int terminate_brin_buildstate (TYPE_1__*) ;

__attribute__((used)) static void
brinsummarize(Relation index, Relation heapRel, BlockNumber pageRange,
     bool include_partial, double *numSummarized, double *numExisting)
{
 BrinRevmap *revmap;
 BrinBuildState *state = ((void*)0);
 IndexInfo *indexInfo = ((void*)0);
 BlockNumber heapNumBlocks;
 BlockNumber pagesPerRange;
 Buffer buf;
 BlockNumber startBlk;

 revmap = brinRevmapInitialize(index, &pagesPerRange, ((void*)0));


 heapNumBlocks = RelationGetNumberOfBlocks(heapRel);
 if (pageRange == BRIN_ALL_BLOCKRANGES)
  startBlk = 0;
 else
 {
  startBlk = (pageRange / pagesPerRange) * pagesPerRange;
  heapNumBlocks = Min(heapNumBlocks, startBlk + pagesPerRange);
 }
 if (startBlk > heapNumBlocks)
 {

  brinRevmapTerminate(revmap);
  return;
 }




 buf = InvalidBuffer;
 for (; startBlk < heapNumBlocks; startBlk += pagesPerRange)
 {
  BrinTuple *tup;
  OffsetNumber off;
  if (!include_partial &&
   (startBlk + pagesPerRange > heapNumBlocks))
   break;

  CHECK_FOR_INTERRUPTS();

  tup = brinGetTupleForHeapBlock(revmap, startBlk, &buf, &off, ((void*)0),
            BUFFER_LOCK_SHARE, ((void*)0));
  if (tup == ((void*)0))
  {

   if (state == ((void*)0))
   {

    Assert(!indexInfo);
    state = initialize_brin_buildstate(index, revmap,
               pagesPerRange);
    indexInfo = BuildIndexInfo(index);
   }
   summarize_range(indexInfo, state, heapRel, startBlk, heapNumBlocks);


   brin_memtuple_initialize(state->bs_dtuple, state->bs_bdesc);

   if (numSummarized)
    *numSummarized += 1.0;
  }
  else
  {
   if (numExisting)
    *numExisting += 1.0;
   LockBuffer(buf, BUFFER_LOCK_UNLOCK);
  }
 }

 if (BufferIsValid(buf))
  ReleaseBuffer(buf);


 brinRevmapTerminate(revmap);
 if (state)
 {
  terminate_brin_buildstate(state);
  pfree(indexInfo);
 }
}
