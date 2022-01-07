
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ blockno; scalar_t__ ischunk; } ;
struct TYPE_6__ {scalar_t__ nentries; scalar_t__ status; int pagetable; TYPE_2__ entry1; } ;
typedef TYPE_1__ TIDBitmap ;
typedef TYPE_2__ PagetableEntry ;
typedef scalar_t__ BlockNumber ;


 int Assert (int) ;
 scalar_t__ TBM_ONE_PAGE ;
 TYPE_2__* pagetable_lookup (int ,scalar_t__) ;

__attribute__((used)) static const PagetableEntry *
tbm_find_pageentry(const TIDBitmap *tbm, BlockNumber pageno)
{
 const PagetableEntry *page;

 if (tbm->nentries == 0)
  return ((void*)0);

 if (tbm->status == TBM_ONE_PAGE)
 {
  page = &tbm->entry1;
  if (page->blockno != pageno)
   return ((void*)0);
  Assert(!page->ischunk);
  return page;
 }

 page = pagetable_lookup(tbm->pagetable, pageno);
 if (page == ((void*)0))
  return ((void*)0);
 if (page->ischunk)
  return ((void*)0);
 return page;
}
