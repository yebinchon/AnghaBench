
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int pagetable_iterator ;
typedef void* dsa_pointer ;
struct TYPE_13__ {int refcount; TYPE_3__* ptentry; } ;
struct TYPE_12__ {int* index; int refcount; } ;
struct TYPE_11__ {scalar_t__ ischunk; } ;
struct TYPE_10__ {int npages; int nchunks; scalar_t__ spageptr; scalar_t__ schunkptr; scalar_t__ schunkbit; int lock; void* schunks; void* spages; void* pagetable; int maxentries; int nentries; } ;
struct TYPE_9__ {scalar_t__ iterating; int npages; int nchunks; scalar_t__ status; void* ptchunks; int * dsa; void* ptpages; void* dsapagetable; int maxentries; int nentries; int entry1; int pagetable; } ;
typedef TYPE_1__ TIDBitmap ;
typedef TYPE_2__ TBMSharedIteratorState ;
typedef TYPE_3__ PagetableEntry ;
typedef TYPE_4__ PTIterationArray ;
typedef TYPE_5__ PTEntryArray ;


 int Assert (int) ;
 int LWLockInitialize (int *,int ) ;
 int LWTRANCHE_TBM ;
 scalar_t__ TBM_HASH ;
 scalar_t__ TBM_ITERATING_PRIVATE ;
 scalar_t__ TBM_ITERATING_SHARED ;
 scalar_t__ TBM_NOT_ITERATING ;
 scalar_t__ TBM_ONE_PAGE ;
 void* dsa_allocate (int *,int) ;
 void* dsa_allocate0 (int *,int) ;
 void* dsa_get_address (int *,void*) ;
 int memcpy (TYPE_3__*,int *,int) ;
 TYPE_3__* pagetable_iterate (int ,int *) ;
 int pagetable_start_iterate (int ,int *) ;
 int pg_atomic_add_fetch_u32 (int *,int) ;
 int pg_atomic_init_u32 (int *,int ) ;
 int qsort_arg (void*,int,int,int ,void*) ;
 int tbm_shared_comparator ;

dsa_pointer
tbm_prepare_shared_iterate(TIDBitmap *tbm)
{
 dsa_pointer dp;
 TBMSharedIteratorState *istate;
 PTEntryArray *ptbase = ((void*)0);
 PTIterationArray *ptpages = ((void*)0);
 PTIterationArray *ptchunks = ((void*)0);

 Assert(tbm->dsa != ((void*)0));
 Assert(tbm->iterating != TBM_ITERATING_PRIVATE);





 dp = dsa_allocate0(tbm->dsa, sizeof(TBMSharedIteratorState));
 istate = dsa_get_address(tbm->dsa, dp);






 if (tbm->iterating == TBM_NOT_ITERATING)
 {
  pagetable_iterator i;
  PagetableEntry *page;
  int idx;
  int npages;
  int nchunks;





  if (tbm->npages)
  {
   tbm->ptpages = dsa_allocate(tbm->dsa, sizeof(PTIterationArray) +
          tbm->npages * sizeof(int));
   ptpages = dsa_get_address(tbm->dsa, tbm->ptpages);
   pg_atomic_init_u32(&ptpages->refcount, 0);
  }
  if (tbm->nchunks)
  {
   tbm->ptchunks = dsa_allocate(tbm->dsa, sizeof(PTIterationArray) +
           tbm->nchunks * sizeof(int));
   ptchunks = dsa_get_address(tbm->dsa, tbm->ptchunks);
   pg_atomic_init_u32(&ptchunks->refcount, 0);
  }







  npages = nchunks = 0;
  if (tbm->status == TBM_HASH)
  {
   ptbase = dsa_get_address(tbm->dsa, tbm->dsapagetable);

   pagetable_start_iterate(tbm->pagetable, &i);
   while ((page = pagetable_iterate(tbm->pagetable, &i)) != ((void*)0))
   {
    idx = page - ptbase->ptentry;
    if (page->ischunk)
     ptchunks->index[nchunks++] = idx;
    else
     ptpages->index[npages++] = idx;
   }

   Assert(npages == tbm->npages);
   Assert(nchunks == tbm->nchunks);
  }
  else if (tbm->status == TBM_ONE_PAGE)
  {





   tbm->dsapagetable = dsa_allocate(tbm->dsa, sizeof(PTEntryArray) +
            sizeof(PagetableEntry));
   ptbase = dsa_get_address(tbm->dsa, tbm->dsapagetable);
   memcpy(ptbase->ptentry, &tbm->entry1, sizeof(PagetableEntry));
   ptpages->index[0] = 0;
  }

  if (ptbase != ((void*)0))
   pg_atomic_init_u32(&ptbase->refcount, 0);
  if (npages > 1)
   qsort_arg((void *) (ptpages->index), npages, sizeof(int),
       tbm_shared_comparator, (void *) ptbase->ptentry);
  if (nchunks > 1)
   qsort_arg((void *) (ptchunks->index), nchunks, sizeof(int),
       tbm_shared_comparator, (void *) ptbase->ptentry);
 }





 istate->nentries = tbm->nentries;
 istate->maxentries = tbm->maxentries;
 istate->npages = tbm->npages;
 istate->nchunks = tbm->nchunks;
 istate->pagetable = tbm->dsapagetable;
 istate->spages = tbm->ptpages;
 istate->schunks = tbm->ptchunks;

 ptbase = dsa_get_address(tbm->dsa, tbm->dsapagetable);
 ptpages = dsa_get_address(tbm->dsa, tbm->ptpages);
 ptchunks = dsa_get_address(tbm->dsa, tbm->ptchunks);






 if (ptbase != ((void*)0))
  pg_atomic_add_fetch_u32(&ptbase->refcount, 1);
 if (ptpages != ((void*)0))
  pg_atomic_add_fetch_u32(&ptpages->refcount, 1);
 if (ptchunks != ((void*)0))
  pg_atomic_add_fetch_u32(&ptchunks->refcount, 1);


 LWLockInitialize(&istate->lock, LWTRANCHE_TBM);


 istate->schunkbit = 0;
 istate->schunkptr = 0;
 istate->spageptr = 0;

 tbm->iterating = TBM_ITERATING_SHARED;

 return dp;
}
