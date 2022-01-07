
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int pagetable_iterator ;
struct TYPE_10__ {int blockno; scalar_t__ ischunk; } ;
struct TYPE_9__ {scalar_t__ nentries; scalar_t__ status; int pagetable; int npages; int nchunks; TYPE_2__ entry1; int iterating; } ;
typedef TYPE_1__ TIDBitmap ;
typedef TYPE_2__ PagetableEntry ;


 int Assert (int) ;
 int ERROR ;
 scalar_t__ TBM_EMPTY ;
 scalar_t__ TBM_HASH ;
 scalar_t__ TBM_ONE_PAGE ;
 int elog (int ,char*) ;
 int pagetable_delete (int ,int ) ;
 TYPE_2__* pagetable_iterate (int ,int *) ;
 int pagetable_start_iterate (int ,int *) ;
 scalar_t__ tbm_intersect_page (TYPE_1__*,TYPE_2__*,TYPE_1__ const*) ;

void
tbm_intersect(TIDBitmap *a, const TIDBitmap *b)
{
 Assert(!a->iterating);

 if (a->nentries == 0)
  return;

 if (a->status == TBM_ONE_PAGE)
 {
  if (tbm_intersect_page(a, &a->entry1, b))
  {

   Assert(!a->entry1.ischunk);
   a->npages--;
   a->nentries--;
   Assert(a->nentries == 0);
   a->status = TBM_EMPTY;
  }
 }
 else
 {
  pagetable_iterator i;
  PagetableEntry *apage;

  Assert(a->status == TBM_HASH);
  pagetable_start_iterate(a->pagetable, &i);
  while ((apage = pagetable_iterate(a->pagetable, &i)) != ((void*)0))
  {
   if (tbm_intersect_page(a, apage, b))
   {

    if (apage->ischunk)
     a->nchunks--;
    else
     a->npages--;
    a->nentries--;
    if (!pagetable_delete(a->pagetable, apage->blockno))
     elog(ERROR, "hash table corrupted");
   }
  }
 }
}
