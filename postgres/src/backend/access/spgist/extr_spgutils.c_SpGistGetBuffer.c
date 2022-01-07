
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16 ;
struct TYPE_3__ {scalar_t__ blkno; int freeSpace; } ;
typedef TYPE_1__ SpGistLastUsedPage ;
typedef int SpGistCache ;
typedef int Relation ;
typedef int Page ;
typedef int Buffer ;


 int Assert (int) ;
 int BufferGetPage (int ) ;
 int ConditionalLockBuffer (int ) ;
 int ERROR ;
 scalar_t__ GBUF_REQ_LEAF (int) ;
 scalar_t__ GBUF_REQ_NULLS (int) ;
 TYPE_1__* GET_LUP (int *,int) ;
 scalar_t__ InvalidBlockNumber ;
 int Min (int,int) ;
 int PageGetExactFreeSpace (int ) ;
 scalar_t__ PageIsEmpty (int ) ;
 scalar_t__ PageIsNew (int ) ;
 int ReadBuffer (int ,scalar_t__) ;
 scalar_t__ RelationGetTargetPageFreeSpace (int ,int ) ;
 int ReleaseBuffer (int ) ;
 int SPGIST_DEFAULT_FILLFACTOR ;
 int SPGIST_LEAF ;
 int SPGIST_NULLS ;
 int SPGIST_PAGE_CAPACITY ;
 int SpGistBlockIsFixed (scalar_t__) ;
 int SpGistInitBuffer (int ,int ) ;
 scalar_t__ SpGistPageIsDeleted (int ) ;
 int SpGistPageIsLeaf (int ) ;
 int SpGistPageStoresNulls (int ) ;
 int UnlockReleaseBuffer (int ) ;
 int allocNewBuffer (int ,int) ;
 int elog (int ,char*) ;
 int * spgGetCache (int ) ;

Buffer
SpGistGetBuffer(Relation index, int flags, int needSpace, bool *isNew)
{
 SpGistCache *cache = spgGetCache(index);
 SpGistLastUsedPage *lup;


 if (needSpace > SPGIST_PAGE_CAPACITY)
  elog(ERROR, "desired SPGiST tuple size is too big");
 needSpace += RelationGetTargetPageFreeSpace(index,
            SPGIST_DEFAULT_FILLFACTOR);
 needSpace = Min(needSpace, SPGIST_PAGE_CAPACITY);


 lup = GET_LUP(cache, flags);


 if (lup->blkno == InvalidBlockNumber)
 {
  *isNew = 1;
  return allocNewBuffer(index, flags);
 }


 Assert(!SpGistBlockIsFixed(lup->blkno));


 if (lup->freeSpace >= needSpace)
 {
  Buffer buffer;
  Page page;

  buffer = ReadBuffer(index, lup->blkno);

  if (!ConditionalLockBuffer(buffer))
  {



   ReleaseBuffer(buffer);
   *isNew = 1;
   return allocNewBuffer(index, flags);
  }

  page = BufferGetPage(buffer);

  if (PageIsNew(page) || SpGistPageIsDeleted(page) || PageIsEmpty(page))
  {

   uint16 pageflags = 0;

   if (GBUF_REQ_LEAF(flags))
    pageflags |= SPGIST_LEAF;
   if (GBUF_REQ_NULLS(flags))
    pageflags |= SPGIST_NULLS;
   SpGistInitBuffer(buffer, pageflags);
   lup->freeSpace = PageGetExactFreeSpace(page) - needSpace;
   *isNew = 1;
   return buffer;
  }





  if ((GBUF_REQ_LEAF(flags) ? SpGistPageIsLeaf(page) : !SpGistPageIsLeaf(page)) &&
   (GBUF_REQ_NULLS(flags) ? SpGistPageStoresNulls(page) : !SpGistPageStoresNulls(page)))
  {
   int freeSpace = PageGetExactFreeSpace(page);

   if (freeSpace >= needSpace)
   {

    lup->freeSpace = freeSpace - needSpace;
    *isNew = 0;
    return buffer;
   }
  }




  UnlockReleaseBuffer(buffer);
 }


 *isNew = 1;
 return allocNewBuffer(index, flags);
}
