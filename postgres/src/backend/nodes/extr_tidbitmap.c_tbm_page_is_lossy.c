
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int bitmapword ;
struct TYPE_6__ {int* words; scalar_t__ ischunk; } ;
struct TYPE_5__ {scalar_t__ nchunks; scalar_t__ status; int pagetable; } ;
typedef TYPE_1__ TIDBitmap ;
typedef TYPE_2__ PagetableEntry ;
typedef int BlockNumber ;


 int Assert (int) ;
 int BITNUM (int) ;
 int PAGES_PER_CHUNK ;
 scalar_t__ TBM_HASH ;
 int WORDNUM (int) ;
 TYPE_2__* pagetable_lookup (int ,int) ;

__attribute__((used)) static bool
tbm_page_is_lossy(const TIDBitmap *tbm, BlockNumber pageno)
{
 PagetableEntry *page;
 BlockNumber chunk_pageno;
 int bitno;


 if (tbm->nchunks == 0)
  return 0;
 Assert(tbm->status == TBM_HASH);

 bitno = pageno % PAGES_PER_CHUNK;
 chunk_pageno = pageno - bitno;

 page = pagetable_lookup(tbm->pagetable, chunk_pageno);

 if (page != ((void*)0) && page->ischunk)
 {
  int wordnum = WORDNUM(bitno);
  int bitnum = BITNUM(bitno);

  if ((page->words[wordnum] & ((bitmapword) 1 << bitnum)) != 0)
   return 1;
 }
 return 0;
}
