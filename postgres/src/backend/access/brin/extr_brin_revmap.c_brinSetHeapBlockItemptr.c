
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ rm_tids; } ;
typedef TYPE_1__ RevmapContents ;
typedef int Page ;
typedef int ItemPointerData ;
typedef int Buffer ;
typedef int BlockNumber ;


 int BufferGetPage (int ) ;
 int HEAPBLK_TO_REVMAP_INDEX (int ,int ) ;
 int ItemPointerGetBlockNumber (int *) ;
 int ItemPointerGetOffsetNumber (int *) ;
 scalar_t__ ItemPointerIsValid (int *) ;
 int ItemPointerSet (int *,int ,int ) ;
 int ItemPointerSetInvalid (int *) ;
 scalar_t__ PageGetContents (int ) ;

void
brinSetHeapBlockItemptr(Buffer buf, BlockNumber pagesPerRange,
      BlockNumber heapBlk, ItemPointerData tid)
{
 RevmapContents *contents;
 ItemPointerData *iptr;
 Page page;


 page = BufferGetPage(buf);
 contents = (RevmapContents *) PageGetContents(page);
 iptr = (ItemPointerData *) contents->rm_tids;
 iptr += HEAPBLK_TO_REVMAP_INDEX(pagesPerRange, heapBlk);

 if (ItemPointerIsValid(&tid))
  ItemPointerSet(iptr,
        ItemPointerGetBlockNumber(&tid),
        ItemPointerGetOffsetNumber(&tid));
 else
  ItemPointerSetInvalid(iptr);
}
