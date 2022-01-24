#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {double tuples; int pages; } ;
typedef  double Selectivity ;
typedef  TYPE_1__ RelOptInfo ;
typedef  int /*<<< orphan*/  PlannerInfo ;
typedef  int /*<<< orphan*/  Path ;
typedef  int /*<<< orphan*/  Cost ;

/* Variables and functions */
 double FUNC0 (int /*<<< orphan*/ ,double) ; 
 double FUNC1 (double,int) ; 
 double FUNC2 (double) ; 
 double FUNC3 (double) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,double*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 double FUNC6 (double,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 long FUNC7 (long) ; 
 long work_mem ; 

double
FUNC8(PlannerInfo *root, RelOptInfo *baserel, Path *bitmapqual,
					 int loop_count, Cost *cost, double *tuple)
{
	Cost		indexTotalCost;
	Selectivity indexSelectivity;
	double		T;
	double		pages_fetched;
	double		tuples_fetched;
	double		heap_pages;
	long		maxentries;

	/*
	 * Fetch total cost of obtaining the bitmap, as well as its total
	 * selectivity.
	 */
	FUNC4(bitmapqual, &indexTotalCost, &indexSelectivity);

	/*
	 * Estimate number of main-table pages fetched.
	 */
	tuples_fetched = FUNC3(indexSelectivity * baserel->tuples);

	T = (baserel->pages > 1) ? (double) baserel->pages : 1.0;

	/*
	 * For a single scan, the number of heap pages that need to be fetched is
	 * the same as the Mackert and Lohman formula for the case T <= b (ie, no
	 * re-reads needed).
	 */
	pages_fetched = (2.0 * T * tuples_fetched) / (2.0 * T + tuples_fetched);

	/*
	 * Calculate the number of pages fetched from the heap.  Then based on
	 * current work_mem estimate get the estimated maxentries in the bitmap.
	 * (Note that we always do this calculation based on the number of pages
	 * that would be fetched in a single iteration, even if loop_count > 1.
	 * That's correct, because only that number of entries will be stored in
	 * the bitmap at one time.)
	 */
	heap_pages = FUNC1(pages_fetched, baserel->pages);
	maxentries = FUNC7(work_mem * 1024L);

	if (loop_count > 1)
	{
		/*
		 * For repeated bitmap scans, scale up the number of tuples fetched in
		 * the Mackert and Lohman formula by the number of scans, so that we
		 * estimate the number of pages fetched by all the scans. Then
		 * pro-rate for one scan.
		 */
		pages_fetched = FUNC6(tuples_fetched * loop_count,
											baserel->pages,
											FUNC5(bitmapqual),
											root);
		pages_fetched /= loop_count;
	}

	if (pages_fetched >= T)
		pages_fetched = T;
	else
		pages_fetched = FUNC2(pages_fetched);

	if (maxentries < heap_pages)
	{
		double		exact_pages;
		double		lossy_pages;

		/*
		 * Crude approximation of the number of lossy pages.  Because of the
		 * way tbm_lossify() is coded, the number of lossy pages increases
		 * very sharply as soon as we run short of memory; this formula has
		 * that property and seems to perform adequately in testing, but it's
		 * possible we could do better somehow.
		 */
		lossy_pages = FUNC0(0, heap_pages - maxentries / 2);
		exact_pages = heap_pages - lossy_pages;

		/*
		 * If there are lossy pages then recompute the  number of tuples
		 * processed by the bitmap heap node.  We assume here that the chance
		 * of a given tuple coming from an exact page is the same as the
		 * chance that a given page is exact.  This might not be true, but
		 * it's not clear how we can do any better.
		 */
		if (lossy_pages > 0)
			tuples_fetched =
				FUNC3(indexSelectivity *
							  (exact_pages / heap_pages) * baserel->tuples +
							  (lossy_pages / heap_pages) * baserel->tuples);
	}

	if (cost)
		*cost = indexTotalCost;
	if (tuple)
		*tuple = tuples_fetched;

	return pages_fetched;
}