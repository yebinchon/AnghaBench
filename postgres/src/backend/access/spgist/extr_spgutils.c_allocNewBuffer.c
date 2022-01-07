
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16 ;
struct TYPE_6__ {TYPE_1__* cachedPage; } ;
struct TYPE_7__ {TYPE_2__ lastUsedPages; } ;
struct TYPE_5__ {int freeSpace; int blkno; } ;
typedef TYPE_3__ SpGistCache ;
typedef int Relation ;
typedef int Buffer ;
typedef int BlockNumber ;


 int BufferGetBlockNumber (int ) ;
 int BufferGetPage (int ) ;
 int GBUF_INNER_PARITY (int ) ;
 int GBUF_NULLS ;
 int GBUF_PARITY_MASK ;
 scalar_t__ GBUF_REQ_LEAF (int) ;
 scalar_t__ GBUF_REQ_NULLS (int) ;
 int PageGetExactFreeSpace (int ) ;
 int SPGIST_LEAF ;
 int SPGIST_NULLS ;
 int SpGistInitBuffer (int ,int) ;
 int SpGistNewBuffer (int ) ;
 int UnlockReleaseBuffer (int ) ;
 TYPE_3__* spgGetCache (int ) ;

__attribute__((used)) static Buffer
allocNewBuffer(Relation index, int flags)
{
 SpGistCache *cache = spgGetCache(index);
 uint16 pageflags = 0;

 if (GBUF_REQ_LEAF(flags))
  pageflags |= SPGIST_LEAF;
 if (GBUF_REQ_NULLS(flags))
  pageflags |= SPGIST_NULLS;

 for (;;)
 {
  Buffer buffer;

  buffer = SpGistNewBuffer(index);
  SpGistInitBuffer(buffer, pageflags);

  if (pageflags & SPGIST_LEAF)
  {

   return buffer;
  }
  else
  {
   BlockNumber blkno = BufferGetBlockNumber(buffer);
   int blkFlags = GBUF_INNER_PARITY(blkno);

   if ((flags & GBUF_PARITY_MASK) == blkFlags)
   {

    return buffer;
   }
   else
   {

    if (pageflags & SPGIST_NULLS)
     blkFlags |= GBUF_NULLS;
    cache->lastUsedPages.cachedPage[blkFlags].blkno = blkno;
    cache->lastUsedPages.cachedPage[blkFlags].freeSpace =
     PageGetExactFreeSpace(BufferGetPage(buffer));
    UnlockReleaseBuffer(buffer);
   }
  }
 }
}
