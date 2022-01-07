
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int pagetable_iterator ;
struct TYPE_10__ {scalar_t__ ischunk; } ;
struct TYPE_9__ {scalar_t__ schunkbit; scalar_t__ schunkptr; scalar_t__ spageptr; TYPE_1__* tbm; } ;
struct TYPE_8__ {scalar_t__ iterating; scalar_t__ status; int npages; int nchunks; TYPE_3__** schunks; TYPE_3__** spages; int pagetable; int mcxt; } ;
typedef TYPE_1__ TIDBitmap ;
typedef TYPE_2__ TBMIterator ;
typedef TYPE_3__ PagetableEntry ;
typedef int OffsetNumber ;


 int Assert (int) ;
 int MAX_TUPLES_PER_PAGE ;
 scalar_t__ MemoryContextAlloc (int ,int) ;
 scalar_t__ TBM_HASH ;
 scalar_t__ TBM_ITERATING_PRIVATE ;
 scalar_t__ TBM_ITERATING_SHARED ;
 scalar_t__ TBM_NOT_ITERATING ;
 TYPE_3__* pagetable_iterate (int ,int *) ;
 int pagetable_start_iterate (int ,int *) ;
 scalar_t__ palloc (int) ;
 int qsort (TYPE_3__**,int,int,int ) ;
 int tbm_comparator ;

TBMIterator *
tbm_begin_iterate(TIDBitmap *tbm)
{
 TBMIterator *iterator;

 Assert(tbm->iterating != TBM_ITERATING_SHARED);





 iterator = (TBMIterator *) palloc(sizeof(TBMIterator) +
           MAX_TUPLES_PER_PAGE * sizeof(OffsetNumber));
 iterator->tbm = tbm;




 iterator->spageptr = 0;
 iterator->schunkptr = 0;
 iterator->schunkbit = 0;







 if (tbm->status == TBM_HASH && tbm->iterating == TBM_NOT_ITERATING)
 {
  pagetable_iterator i;
  PagetableEntry *page;
  int npages;
  int nchunks;

  if (!tbm->spages && tbm->npages > 0)
   tbm->spages = (PagetableEntry **)
    MemoryContextAlloc(tbm->mcxt,
           tbm->npages * sizeof(PagetableEntry *));
  if (!tbm->schunks && tbm->nchunks > 0)
   tbm->schunks = (PagetableEntry **)
    MemoryContextAlloc(tbm->mcxt,
           tbm->nchunks * sizeof(PagetableEntry *));

  npages = nchunks = 0;
  pagetable_start_iterate(tbm->pagetable, &i);
  while ((page = pagetable_iterate(tbm->pagetable, &i)) != ((void*)0))
  {
   if (page->ischunk)
    tbm->schunks[nchunks++] = page;
   else
    tbm->spages[npages++] = page;
  }
  Assert(npages == tbm->npages);
  Assert(nchunks == tbm->nchunks);
  if (npages > 1)
   qsort(tbm->spages, npages, sizeof(PagetableEntry *),
      tbm_comparator);
  if (nchunks > 1)
   qsort(tbm->schunks, nchunks, sizeof(PagetableEntry *),
      tbm_comparator);
 }

 tbm->iterating = TBM_ITERATING_PRIVATE;

 return iterator;
}
