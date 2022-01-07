
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int cur; } ;
typedef TYPE_1__ pagetable_iterator ;
struct TYPE_11__ {int blockno; scalar_t__ ischunk; } ;
struct TYPE_10__ {scalar_t__ iterating; scalar_t__ status; int nentries; int maxentries; int lossify_start; int pagetable; } ;
typedef TYPE_2__ TIDBitmap ;
typedef TYPE_3__ PagetableEntry ;


 int Assert (int) ;
 int INT_MAX ;
 int Min (int,int) ;
 int PAGES_PER_CHUNK ;
 scalar_t__ TBM_HASH ;
 scalar_t__ TBM_NOT_ITERATING ;
 TYPE_3__* pagetable_iterate (int ,TYPE_1__*) ;
 int pagetable_start_iterate_at (int ,TYPE_1__*,int ) ;
 int tbm_mark_page_lossy (TYPE_2__*,int) ;

__attribute__((used)) static void
tbm_lossify(TIDBitmap *tbm)
{
 pagetable_iterator i;
 PagetableEntry *page;
 Assert(tbm->iterating == TBM_NOT_ITERATING);
 Assert(tbm->status == TBM_HASH);

 pagetable_start_iterate_at(tbm->pagetable, &i, tbm->lossify_start);
 while ((page = pagetable_iterate(tbm->pagetable, &i)) != ((void*)0))
 {
  if (page->ischunk)
   continue;





  if ((page->blockno % PAGES_PER_CHUNK) == 0)
   continue;


  tbm_mark_page_lossy(tbm, page->blockno);

  if (tbm->nentries <= tbm->maxentries / 2)
  {




   tbm->lossify_start = i.cur;
   break;
  }







 }
 if (tbm->nentries > tbm->maxentries / 2)
  tbm->maxentries = Min(tbm->nentries, (INT_MAX - 1) / 2) * 2;
}
