#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  GucSource ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,double*) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (double) ; 

__attribute__((used)) static bool
FUNC4(int *newval, void **extra, GucSource source)
{
#ifdef USE_PREFETCH
	double		new_prefetch_pages;

	if (ComputeIoConcurrency(*newval, &new_prefetch_pages))
	{
		int		   *myextra = (int *) guc_malloc(ERROR, sizeof(int));

		*myextra = (int) rint(new_prefetch_pages);
		*extra = (void *) myextra;

		return true;
	}
	else
		return false;
#else
	if (*newval != 0)
	{
		FUNC1("effective_io_concurrency must be set to 0 on platforms that lack posix_fadvise().");
		return false;
	}
	return true;
#endif							/* USE_PREFETCH */
}