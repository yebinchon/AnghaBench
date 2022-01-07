
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int bitmapword ;
struct TYPE_9__ {int* words; int recheck; scalar_t__ ischunk; } ;
struct TYPE_8__ {scalar_t__ iterating; scalar_t__ nentries; scalar_t__ maxentries; } ;
typedef TYPE_1__ TIDBitmap ;
typedef TYPE_2__ PagetableEntry ;
typedef int OffsetNumber ;
typedef scalar_t__ ItemPointer ;
typedef scalar_t__ BlockNumber ;


 int Assert (int) ;
 int BITNUM (int) ;
 int ERROR ;
 scalar_t__ InvalidBlockNumber ;
 scalar_t__ ItemPointerGetBlockNumber (scalar_t__ const) ;
 int ItemPointerGetOffsetNumber (scalar_t__ const) ;
 int MAX_TUPLES_PER_PAGE ;
 scalar_t__ TBM_NOT_ITERATING ;
 int WORDNUM (int) ;
 int elog (int ,char*,int) ;
 TYPE_2__* tbm_get_pageentry (TYPE_1__*,scalar_t__) ;
 int tbm_lossify (TYPE_1__*) ;
 scalar_t__ tbm_page_is_lossy (TYPE_1__*,scalar_t__) ;

void
tbm_add_tuples(TIDBitmap *tbm, const ItemPointer tids, int ntids,
      bool recheck)
{
 BlockNumber currblk = InvalidBlockNumber;
 PagetableEntry *page = ((void*)0);
 int i;

 Assert(tbm->iterating == TBM_NOT_ITERATING);
 for (i = 0; i < ntids; i++)
 {
  BlockNumber blk = ItemPointerGetBlockNumber(tids + i);
  OffsetNumber off = ItemPointerGetOffsetNumber(tids + i);
  int wordnum,
     bitnum;


  if (off < 1 || off > MAX_TUPLES_PER_PAGE)
   elog(ERROR, "tuple offset out of range: %u", off);






  if (blk != currblk)
  {
   if (tbm_page_is_lossy(tbm, blk))
    page = ((void*)0);
   else
    page = tbm_get_pageentry(tbm, blk);
   currblk = blk;
  }

  if (page == ((void*)0))
   continue;

  if (page->ischunk)
  {

   wordnum = bitnum = 0;
  }
  else
  {

   wordnum = WORDNUM(off - 1);
   bitnum = BITNUM(off - 1);
  }
  page->words[wordnum] |= ((bitmapword) 1 << bitnum);
  page->recheck |= recheck;

  if (tbm->nentries > tbm->maxentries)
  {
   tbm_lossify(tbm);

   currblk = InvalidBlockNumber;
  }
 }
}
