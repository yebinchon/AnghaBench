
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int pagetable_iterator ;
struct TYPE_5__ {scalar_t__ nentries; scalar_t__ status; int pagetable; int entry1; int iterating; } ;
typedef TYPE_1__ TIDBitmap ;
typedef int PagetableEntry ;


 int Assert (int) ;
 scalar_t__ TBM_HASH ;
 scalar_t__ TBM_ONE_PAGE ;
 int * pagetable_iterate (int ,int *) ;
 int pagetable_start_iterate (int ,int *) ;
 int tbm_union_page (TYPE_1__*,int *) ;

void
tbm_union(TIDBitmap *a, const TIDBitmap *b)
{
 Assert(!a->iterating);

 if (b->nentries == 0)
  return;

 if (b->status == TBM_ONE_PAGE)
  tbm_union_page(a, &b->entry1);
 else
 {
  pagetable_iterator i;
  PagetableEntry *bpage;

  Assert(b->status == TBM_HASH);
  pagetable_start_iterate(b->pagetable, &i);
  while ((bpage = pagetable_iterate(b->pagetable, &i)) != ((void*)0))
   tbm_union_page(a, bpage);
 }
}
