
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int bitmapword ;
struct TYPE_8__ {char status; int blockno; int ischunk; int* words; } ;
struct TYPE_7__ {scalar_t__ status; int npages; int nchunks; int nentries; int pagetable; } ;
typedef TYPE_1__ TIDBitmap ;
typedef TYPE_2__ PagetableEntry ;
typedef int BlockNumber ;


 int BITNUM (int) ;
 int MemSet (TYPE_2__*,int ,int) ;
 int PAGES_PER_CHUNK ;
 scalar_t__ TBM_HASH ;
 int WORDNUM (int) ;
 scalar_t__ pagetable_delete (int ,int) ;
 TYPE_2__* pagetable_insert (int ,int,int*) ;
 int tbm_create_pagetable (TYPE_1__*) ;

__attribute__((used)) static void
tbm_mark_page_lossy(TIDBitmap *tbm, BlockNumber pageno)
{
 PagetableEntry *page;
 bool found;
 BlockNumber chunk_pageno;
 int bitno;
 int wordnum;
 int bitnum;


 if (tbm->status != TBM_HASH)
  tbm_create_pagetable(tbm);

 bitno = pageno % PAGES_PER_CHUNK;
 chunk_pageno = pageno - bitno;





 if (bitno != 0)
 {
  if (pagetable_delete(tbm->pagetable, pageno))
  {

   tbm->nentries--;
   tbm->npages--;
  }
 }


 page = pagetable_insert(tbm->pagetable, chunk_pageno, &found);


 if (!found)
 {
  char oldstatus = page->status;

  MemSet(page, 0, sizeof(PagetableEntry));
  page->status = oldstatus;
  page->blockno = chunk_pageno;
  page->ischunk = 1;

  tbm->nentries++;
  tbm->nchunks++;
 }
 else if (!page->ischunk)
 {
  char oldstatus = page->status;


  MemSet(page, 0, sizeof(PagetableEntry));
  page->status = oldstatus;
  page->blockno = chunk_pageno;
  page->ischunk = 1;

  page->words[0] = ((bitmapword) 1 << 0);

  tbm->nchunks++;
  tbm->npages--;
 }


 wordnum = WORDNUM(bitno);
 bitnum = BITNUM(bitno);
 page->words[wordnum] |= ((bitmapword) 1 << bitnum);
}
