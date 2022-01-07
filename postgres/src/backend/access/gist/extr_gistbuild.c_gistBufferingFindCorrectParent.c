
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int indexrel; } ;
struct TYPE_5__ {int t_tid; } ;
typedef int Page ;
typedef scalar_t__ OffsetNumber ;
typedef int ItemId ;
typedef TYPE_1__* IndexTuple ;
typedef TYPE_2__ GISTBuildState ;
typedef int Buffer ;
typedef scalar_t__ BlockNumber ;


 int BufferGetPage (int ) ;
 int ERROR ;
 scalar_t__ FirstOffsetNumber ;
 int GIST_EXCLUSIVE ;
 scalar_t__ InvalidBlockNumber ;
 int InvalidBuffer ;
 scalar_t__ InvalidOffsetNumber ;
 scalar_t__ ItemPointerGetBlockNumber (int *) ;
 int LockBuffer (int ,int ) ;
 scalar_t__ OffsetNumberNext (scalar_t__) ;
 int PageGetItem (int ,int ) ;
 int PageGetItemId (int ,scalar_t__) ;
 scalar_t__ PageGetMaxOffsetNumber (int ) ;
 int ReadBuffer (int ,scalar_t__) ;
 int elog (int ,char*,scalar_t__) ;
 scalar_t__ gistGetParent (TYPE_2__*,scalar_t__) ;
 int gistcheckpage (int ,int ) ;

__attribute__((used)) static Buffer
gistBufferingFindCorrectParent(GISTBuildState *buildstate,
          BlockNumber childblkno, int level,
          BlockNumber *parentblkno,
          OffsetNumber *downlinkoffnum)
{
 BlockNumber parent;
 Buffer buffer;
 Page page;
 OffsetNumber maxoff;
 OffsetNumber off;

 if (level > 0)
  parent = gistGetParent(buildstate, childblkno);
 else
 {




  if (*parentblkno == InvalidBlockNumber)
   elog(ERROR, "no parent buffer provided of child %d", childblkno);
  parent = *parentblkno;
 }

 buffer = ReadBuffer(buildstate->indexrel, parent);
 page = BufferGetPage(buffer);
 LockBuffer(buffer, GIST_EXCLUSIVE);
 gistcheckpage(buildstate->indexrel, buffer);
 maxoff = PageGetMaxOffsetNumber(page);


 if (parent == *parentblkno && *parentblkno != InvalidBlockNumber &&
  *downlinkoffnum != InvalidOffsetNumber && *downlinkoffnum <= maxoff)
 {
  ItemId iid = PageGetItemId(page, *downlinkoffnum);
  IndexTuple idxtuple = (IndexTuple) PageGetItem(page, iid);

  if (ItemPointerGetBlockNumber(&(idxtuple->t_tid)) == childblkno)
  {

   return buffer;
  }
 }
 for (off = FirstOffsetNumber; off <= maxoff; off = OffsetNumberNext(off))
 {
  ItemId iid = PageGetItemId(page, off);
  IndexTuple idxtuple = (IndexTuple) PageGetItem(page, iid);

  if (ItemPointerGetBlockNumber(&(idxtuple->t_tid)) == childblkno)
  {

   *downlinkoffnum = off;
   return buffer;
  }
 }

 elog(ERROR, "failed to re-find parent for block %u", childblkno);
 return InvalidBuffer;
}
