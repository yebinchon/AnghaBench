
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ blkno; int freeSpace; } ;
typedef TYPE_1__ SpGistLastUsedPage ;
typedef int SpGistCache ;
typedef int Relation ;
typedef int Page ;
typedef int Buffer ;
typedef scalar_t__ BlockNumber ;


 scalar_t__ BufferGetBlockNumber (int ) ;
 int BufferGetPage (int ) ;
 int GBUF_INNER_PARITY (scalar_t__) ;
 int GBUF_LEAF ;
 int GBUF_NULLS ;
 TYPE_1__* GET_LUP (int *,int) ;
 scalar_t__ InvalidBlockNumber ;
 int PageGetExactFreeSpace (int ) ;
 scalar_t__ SpGistBlockIsFixed (scalar_t__) ;
 scalar_t__ SpGistPageIsLeaf (int ) ;
 scalar_t__ SpGistPageStoresNulls (int ) ;
 int * spgGetCache (int ) ;

void
SpGistSetLastUsedPage(Relation index, Buffer buffer)
{
 SpGistCache *cache = spgGetCache(index);
 SpGistLastUsedPage *lup;
 int freeSpace;
 Page page = BufferGetPage(buffer);
 BlockNumber blkno = BufferGetBlockNumber(buffer);
 int flags;


 if (SpGistBlockIsFixed(blkno))
  return;

 if (SpGistPageIsLeaf(page))
  flags = GBUF_LEAF;
 else
  flags = GBUF_INNER_PARITY(blkno);
 if (SpGistPageStoresNulls(page))
  flags |= GBUF_NULLS;

 lup = GET_LUP(cache, flags);

 freeSpace = PageGetExactFreeSpace(page);
 if (lup->blkno == InvalidBlockNumber || lup->blkno == blkno ||
  lup->freeSpace < freeSpace)
 {
  lup->blkno = blkno;
  lup->freeSpace = freeSpace;
 }
}
