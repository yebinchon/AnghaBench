
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int bitmapword ;
struct TYPE_4__ {int* words; int recheck; scalar_t__ ischunk; scalar_t__ blockno; } ;
typedef int TIDBitmap ;
typedef TYPE_1__ PagetableEntry ;
typedef scalar_t__ BlockNumber ;


 int Assert (int) ;
 int BITS_PER_BITMAPWORD ;
 int WORDS_PER_CHUNK ;
 int WORDS_PER_PAGE ;
 TYPE_1__* tbm_find_pageentry (int const*,scalar_t__) ;
 scalar_t__ tbm_page_is_lossy (int const*,scalar_t__) ;

__attribute__((used)) static bool
tbm_intersect_page(TIDBitmap *a, PagetableEntry *apage, const TIDBitmap *b)
{
 const PagetableEntry *bpage;
 int wordnum;

 if (apage->ischunk)
 {

  bool candelete = 1;

  for (wordnum = 0; wordnum < WORDS_PER_CHUNK; wordnum++)
  {
   bitmapword w = apage->words[wordnum];

   if (w != 0)
   {
    bitmapword neww = w;
    BlockNumber pg;
    int bitnum;

    pg = apage->blockno + (wordnum * BITS_PER_BITMAPWORD);
    bitnum = 0;
    while (w != 0)
    {
     if (w & 1)
     {
      if (!tbm_page_is_lossy(b, pg) &&
       tbm_find_pageentry(b, pg) == ((void*)0))
      {

       neww &= ~((bitmapword) 1 << bitnum);
      }
     }
     pg++;
     bitnum++;
     w >>= 1;
    }
    apage->words[wordnum] = neww;
    if (neww != 0)
     candelete = 0;
   }
  }
  return candelete;
 }
 else if (tbm_page_is_lossy(b, apage->blockno))
 {






  apage->recheck = 1;
  return 0;
 }
 else
 {
  bool candelete = 1;

  bpage = tbm_find_pageentry(b, apage->blockno);
  if (bpage != ((void*)0))
  {

   Assert(!bpage->ischunk);
   for (wordnum = 0; wordnum < WORDS_PER_PAGE; wordnum++)
   {
    apage->words[wordnum] &= bpage->words[wordnum];
    if (apage->words[wordnum] != 0)
     candelete = 0;
   }
   apage->recheck |= bpage->recheck;
  }

  return candelete;
 }
}
