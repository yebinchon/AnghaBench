
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int t_tid; } ;
typedef int Page ;
typedef scalar_t__ OffsetNumber ;
typedef int ItemId ;
typedef TYPE_1__* IndexTuple ;
typedef int GISTBuildState ;
typedef int Buffer ;
typedef int BlockNumber ;


 int Assert (int) ;
 int BufferGetBlockNumber (int ) ;
 int BufferGetPage (int ) ;
 scalar_t__ FirstOffsetNumber ;
 int GistPageIsLeaf (int ) ;
 int ItemPointerGetBlockNumber (int *) ;
 int PageGetItem (int ,int ) ;
 int PageGetItemId (int ,scalar_t__) ;
 scalar_t__ PageGetMaxOffsetNumber (int ) ;
 int gistMemorizeParent (int *,int ,int ) ;

__attribute__((used)) static void
gistMemorizeAllDownlinks(GISTBuildState *buildstate, Buffer parentbuf)
{
 OffsetNumber maxoff;
 OffsetNumber off;
 BlockNumber parentblkno = BufferGetBlockNumber(parentbuf);
 Page page = BufferGetPage(parentbuf);

 Assert(!GistPageIsLeaf(page));

 maxoff = PageGetMaxOffsetNumber(page);
 for (off = FirstOffsetNumber; off <= maxoff; off++)
 {
  ItemId iid = PageGetItemId(page, off);
  IndexTuple idxtuple = (IndexTuple) PageGetItem(page, iid);
  BlockNumber childblkno = ItemPointerGetBlockNumber(&(idxtuple->t_tid));

  gistMemorizeParent(buildstate, childblkno, parentblkno);
 }
}
