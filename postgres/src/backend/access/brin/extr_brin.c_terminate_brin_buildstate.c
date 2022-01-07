
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* bs_dtuple; int bs_bdesc; int bs_irel; int bs_currentInsertBuf; } ;
typedef int Size ;
typedef int Page ;
typedef TYPE_1__ BrinBuildState ;
typedef scalar_t__ BlockNumber ;


 scalar_t__ BufferGetBlockNumber (int ) ;
 int BufferGetPage (int ) ;
 int BufferIsInvalid (int ) ;
 int FreeSpaceMapVacuumRange (int ,scalar_t__,scalar_t__) ;
 int PageGetFreeSpace (int ) ;
 int RecordPageWithFreeSpace (int ,scalar_t__,int ) ;
 int ReleaseBuffer (int ) ;
 int brin_free_desc (int ) ;
 int pfree (TYPE_1__*) ;

__attribute__((used)) static void
terminate_brin_buildstate(BrinBuildState *state)
{




 if (!BufferIsInvalid(state->bs_currentInsertBuf))
 {
  Page page;
  Size freespace;
  BlockNumber blk;

  page = BufferGetPage(state->bs_currentInsertBuf);
  freespace = PageGetFreeSpace(page);
  blk = BufferGetBlockNumber(state->bs_currentInsertBuf);
  ReleaseBuffer(state->bs_currentInsertBuf);
  RecordPageWithFreeSpace(state->bs_irel, blk, freespace);
  FreeSpaceMapVacuumRange(state->bs_irel, blk, blk + 1);
 }

 brin_free_desc(state->bs_bdesc);
 pfree(state->bs_dtuple);
 pfree(state);
}
