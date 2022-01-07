
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ blockno; char status; } ;
struct TYPE_8__ {scalar_t__ status; int npages; int nentries; int pagetable; TYPE_2__ entry1; } ;
typedef TYPE_1__ TIDBitmap ;
typedef TYPE_2__ PagetableEntry ;
typedef scalar_t__ BlockNumber ;


 int MemSet (TYPE_2__*,int ,int) ;
 scalar_t__ TBM_EMPTY ;
 scalar_t__ TBM_ONE_PAGE ;
 TYPE_2__* pagetable_insert (int ,scalar_t__,int*) ;
 int tbm_create_pagetable (TYPE_1__*) ;

__attribute__((used)) static PagetableEntry *
tbm_get_pageentry(TIDBitmap *tbm, BlockNumber pageno)
{
 PagetableEntry *page;
 bool found;

 if (tbm->status == TBM_EMPTY)
 {

  page = &tbm->entry1;
  found = 0;
  tbm->status = TBM_ONE_PAGE;
 }
 else
 {
  if (tbm->status == TBM_ONE_PAGE)
  {
   page = &tbm->entry1;
   if (page->blockno == pageno)
    return page;

   tbm_create_pagetable(tbm);
  }


  page = pagetable_insert(tbm->pagetable, pageno, &found);
 }


 if (!found)
 {
  char oldstatus = page->status;

  MemSet(page, 0, sizeof(PagetableEntry));
  page->status = oldstatus;
  page->blockno = pageno;

  tbm->nentries++;
  tbm->npages++;
 }

 return page;
}
