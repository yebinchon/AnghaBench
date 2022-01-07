
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int bitmapword ;
struct TYPE_11__ {int* words; int recheck; scalar_t__ ischunk; scalar_t__ blockno; } ;
struct TYPE_10__ {scalar_t__ nentries; scalar_t__ maxentries; } ;
typedef TYPE_1__ TIDBitmap ;
typedef TYPE_2__ PagetableEntry ;
typedef scalar_t__ BlockNumber ;


 int BITS_PER_BITMAPWORD ;
 int WORDS_PER_CHUNK ;
 int WORDS_PER_PAGE ;
 TYPE_2__* tbm_get_pageentry (TYPE_1__*,scalar_t__) ;
 int tbm_lossify (TYPE_1__*) ;
 int tbm_mark_page_lossy (TYPE_1__*,scalar_t__) ;
 scalar_t__ tbm_page_is_lossy (TYPE_1__*,scalar_t__) ;

__attribute__((used)) static void
tbm_union_page(TIDBitmap *a, const PagetableEntry *bpage)
{
 PagetableEntry *apage;
 int wordnum;

 if (bpage->ischunk)
 {

  for (wordnum = 0; wordnum < WORDS_PER_CHUNK; wordnum++)
  {
   bitmapword w = bpage->words[wordnum];

   if (w != 0)
   {
    BlockNumber pg;

    pg = bpage->blockno + (wordnum * BITS_PER_BITMAPWORD);
    while (w != 0)
    {
     if (w & 1)
      tbm_mark_page_lossy(a, pg);
     pg++;
     w >>= 1;
    }
   }
  }
 }
 else if (tbm_page_is_lossy(a, bpage->blockno))
 {

  return;
 }
 else
 {
  apage = tbm_get_pageentry(a, bpage->blockno);
  if (apage->ischunk)
  {

   apage->words[0] |= ((bitmapword) 1 << 0);
  }
  else
  {

   for (wordnum = 0; wordnum < WORDS_PER_PAGE; wordnum++)
    apage->words[wordnum] |= bpage->words[wordnum];
   apage->recheck |= bpage->recheck;
  }
 }

 if (a->nentries > a->maxentries)
  tbm_lossify(a);
}
