#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pagetable_iterator ;
typedef  void* dsa_pointer ;
struct TYPE_13__ {int /*<<< orphan*/  refcount; TYPE_3__* ptentry; } ;
struct TYPE_12__ {int* index; int /*<<< orphan*/  refcount; } ;
struct TYPE_11__ {scalar_t__ ischunk; } ;
struct TYPE_10__ {int npages; int nchunks; scalar_t__ spageptr; scalar_t__ schunkptr; scalar_t__ schunkbit; int /*<<< orphan*/  lock; void* schunks; void* spages; void* pagetable; int /*<<< orphan*/  maxentries; int /*<<< orphan*/  nentries; } ;
struct TYPE_9__ {scalar_t__ iterating; int npages; int nchunks; scalar_t__ status; void* ptchunks; int /*<<< orphan*/ * dsa; void* ptpages; void* dsapagetable; int /*<<< orphan*/  maxentries; int /*<<< orphan*/  nentries; int /*<<< orphan*/  entry1; int /*<<< orphan*/  pagetable; } ;
typedef  TYPE_1__ TIDBitmap ;
typedef  TYPE_2__ TBMSharedIteratorState ;
typedef  TYPE_3__ PagetableEntry ;
typedef  TYPE_4__ PTIterationArray ;
typedef  TYPE_5__ PTEntryArray ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LWTRANCHE_TBM ; 
 scalar_t__ TBM_HASH ; 
 scalar_t__ TBM_ITERATING_PRIVATE ; 
 scalar_t__ TBM_ITERATING_SHARED ; 
 scalar_t__ TBM_NOT_ITERATING ; 
 scalar_t__ TBM_ONE_PAGE ; 
 void* FUNC2 (int /*<<< orphan*/ *,int) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int) ; 
 void* FUNC4 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ *,int) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (void*,int,int,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  tbm_shared_comparator ; 

dsa_pointer
FUNC11(TIDBitmap *tbm)
{
	dsa_pointer dp;
	TBMSharedIteratorState *istate;
	PTEntryArray *ptbase = NULL;
	PTIterationArray *ptpages = NULL;
	PTIterationArray *ptchunks = NULL;

	FUNC0(tbm->dsa != NULL);
	FUNC0(tbm->iterating != TBM_ITERATING_PRIVATE);

	/*
	 * Allocate TBMSharedIteratorState from DSA to hold the shared members and
	 * lock, this will also be used by multiple worker for shared iterate.
	 */
	dp = FUNC3(tbm->dsa, sizeof(TBMSharedIteratorState));
	istate = FUNC4(tbm->dsa, dp);

	/*
	 * If we're not already iterating, create and fill the sorted page lists.
	 * (If we are, the sorted page lists are already stored in the TIDBitmap,
	 * and we can just reuse them.)
	 */
	if (tbm->iterating == TBM_NOT_ITERATING)
	{
		pagetable_iterator i;
		PagetableEntry *page;
		int			idx;
		int			npages;
		int			nchunks;

		/*
		 * Allocate the page and chunk array memory from the DSA to share
		 * across multiple processes.
		 */
		if (tbm->npages)
		{
			tbm->ptpages = FUNC2(tbm->dsa, sizeof(PTIterationArray) +
										tbm->npages * sizeof(int));
			ptpages = FUNC4(tbm->dsa, tbm->ptpages);
			FUNC9(&ptpages->refcount, 0);
		}
		if (tbm->nchunks)
		{
			tbm->ptchunks = FUNC2(tbm->dsa, sizeof(PTIterationArray) +
										 tbm->nchunks * sizeof(int));
			ptchunks = FUNC4(tbm->dsa, tbm->ptchunks);
			FUNC9(&ptchunks->refcount, 0);
		}

		/*
		 * If TBM status is TBM_HASH then iterate over the pagetable and
		 * convert it to page and chunk arrays.  But if it's in the
		 * TBM_ONE_PAGE mode then directly allocate the space for one entry
		 * from the DSA.
		 */
		npages = nchunks = 0;
		if (tbm->status == TBM_HASH)
		{
			ptbase = FUNC4(tbm->dsa, tbm->dsapagetable);

			FUNC7(tbm->pagetable, &i);
			while ((page = FUNC6(tbm->pagetable, &i)) != NULL)
			{
				idx = page - ptbase->ptentry;
				if (page->ischunk)
					ptchunks->index[nchunks++] = idx;
				else
					ptpages->index[npages++] = idx;
			}

			FUNC0(npages == tbm->npages);
			FUNC0(nchunks == tbm->nchunks);
		}
		else if (tbm->status == TBM_ONE_PAGE)
		{
			/*
			 * In one page mode allocate the space for one pagetable entry,
			 * initialize it, and directly store its index (i.e. 0) in the
			 * page array.
			 */
			tbm->dsapagetable = FUNC2(tbm->dsa, sizeof(PTEntryArray) +
											 sizeof(PagetableEntry));
			ptbase = FUNC4(tbm->dsa, tbm->dsapagetable);
			FUNC5(ptbase->ptentry, &tbm->entry1, sizeof(PagetableEntry));
			ptpages->index[0] = 0;
		}

		if (ptbase != NULL)
			FUNC9(&ptbase->refcount, 0);
		if (npages > 1)
			FUNC10((void *) (ptpages->index), npages, sizeof(int),
					  tbm_shared_comparator, (void *) ptbase->ptentry);
		if (nchunks > 1)
			FUNC10((void *) (ptchunks->index), nchunks, sizeof(int),
					  tbm_shared_comparator, (void *) ptbase->ptentry);
	}

	/*
	 * Store the TBM members in the shared state so that we can share them
	 * across multiple processes.
	 */
	istate->nentries = tbm->nentries;
	istate->maxentries = tbm->maxentries;
	istate->npages = tbm->npages;
	istate->nchunks = tbm->nchunks;
	istate->pagetable = tbm->dsapagetable;
	istate->spages = tbm->ptpages;
	istate->schunks = tbm->ptchunks;

	ptbase = FUNC4(tbm->dsa, tbm->dsapagetable);
	ptpages = FUNC4(tbm->dsa, tbm->ptpages);
	ptchunks = FUNC4(tbm->dsa, tbm->ptchunks);

	/*
	 * For every shared iterator, referring to pagetable and iterator array,
	 * increase the refcount by 1 so that while freeing the shared iterator we
	 * don't free pagetable and iterator array until its refcount becomes 0.
	 */
	if (ptbase != NULL)
		FUNC8(&ptbase->refcount, 1);
	if (ptpages != NULL)
		FUNC8(&ptpages->refcount, 1);
	if (ptchunks != NULL)
		FUNC8(&ptchunks->refcount, 1);

	/* Initialize the iterator lock */
	FUNC1(&istate->lock, LWTRANCHE_TBM);

	/* Initialize the shared iterator state */
	istate->schunkbit = 0;
	istate->schunkptr = 0;
	istate->spageptr = 0;

	tbm->iterating = TBM_ITERATING_SHARED;

	return dp;
}