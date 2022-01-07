
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bs_pagesPerRange; int bs_currRangeStart; int bs_dtuple; int bs_bdesc; int bs_rmAccess; int bs_irel; } ;
typedef int Size ;
typedef int Relation ;
typedef int OffsetNumber ;
typedef int IndexInfo ;
typedef int Buffer ;
typedef int BrinTuple ;
typedef TYPE_1__ BrinBuildState ;
typedef int BlockNumber ;


 int Assert (int) ;
 int BUFFER_LOCK_SHARE ;
 int BUFFER_LOCK_UNLOCK ;
 int CHECK_FOR_INTERRUPTS () ;
 int ERROR ;
 int InvalidBuffer ;
 int LockBuffer (int ,int ) ;
 int Min (int,int) ;
 int RelationGetNumberOfBlocks (int ) ;
 int ReleaseBuffer (int ) ;
 int * brinGetTupleForHeapBlock (int ,int,int *,int *,int *,int ,int *) ;
 int brin_can_do_samepage_update (int ,int ,int ) ;
 int * brin_copy_tuple (int *,int ,int *,int *) ;
 int brin_doinsert (int ,int,int ,int *,int,int *,int ) ;
 int brin_doupdate (int ,int,int ,int,int ,int ,int *,int ,int *,int ,int) ;
 int * brin_form_placeholder_tuple (int ,int,int *) ;
 int * brin_form_tuple (int ,int,int ,int *) ;
 int brin_free_tuple (int *) ;
 int brinbuildCallback ;
 int elog (int ,char*) ;
 int table_index_build_range_scan (int ,int ,int *,int,int,int,int,int,int ,void*,int *) ;
 int union_tuples (int ,int ,int *) ;

__attribute__((used)) static void
summarize_range(IndexInfo *indexInfo, BrinBuildState *state, Relation heapRel,
    BlockNumber heapBlk, BlockNumber heapNumBlks)
{
 Buffer phbuf;
 BrinTuple *phtup;
 Size phsz;
 OffsetNumber offset;
 BlockNumber scanNumBlks;




 phbuf = InvalidBuffer;
 phtup = brin_form_placeholder_tuple(state->bs_bdesc, heapBlk, &phsz);
 offset = brin_doinsert(state->bs_irel, state->bs_pagesPerRange,
         state->bs_rmAccess, &phbuf,
         heapBlk, phtup, phsz);





 Assert(heapBlk % state->bs_pagesPerRange == 0);
 if (heapBlk + state->bs_pagesPerRange > heapNumBlks)
 {
  scanNumBlks = Min(RelationGetNumberOfBlocks(heapRel) - heapBlk,
        state->bs_pagesPerRange);
 }
 else
 {

  scanNumBlks = state->bs_pagesPerRange;
 }
 state->bs_currRangeStart = heapBlk;
 table_index_build_range_scan(heapRel, state->bs_irel, indexInfo, 0, 1, 0,
         heapBlk, scanNumBlks,
         brinbuildCallback, (void *) state, ((void*)0));







 for (;;)
 {
  BrinTuple *newtup;
  Size newsize;
  bool didupdate;
  bool samepage;

  CHECK_FOR_INTERRUPTS();




  newtup = brin_form_tuple(state->bs_bdesc,
         heapBlk, state->bs_dtuple, &newsize);
  samepage = brin_can_do_samepage_update(phbuf, phsz, newsize);
  didupdate =
   brin_doupdate(state->bs_irel, state->bs_pagesPerRange,
        state->bs_rmAccess, heapBlk, phbuf, offset,
        phtup, phsz, newtup, newsize, samepage);
  brin_free_tuple(phtup);
  brin_free_tuple(newtup);


  if (didupdate)
   break;
  phtup = brinGetTupleForHeapBlock(state->bs_rmAccess, heapBlk, &phbuf,
           &offset, &phsz, BUFFER_LOCK_SHARE,
           ((void*)0));

  if (phtup == ((void*)0))
   elog(ERROR, "missing placeholder tuple");
  phtup = brin_copy_tuple(phtup, phsz, ((void*)0), ((void*)0));
  LockBuffer(phbuf, BUFFER_LOCK_UNLOCK);


  union_tuples(state->bs_bdesc, state->bs_dtuple, phtup);
 }

 ReleaseBuffer(phbuf);
}
