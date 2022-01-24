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
typedef  int /*<<< orphan*/  AllocateDesc ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  ERROR ; 
 int FD_MINFREE ; 
 int /*<<< orphan*/ * allocatedDescs ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int) ; 
 int maxAllocatedDescs ; 
 int max_safe_fds ; 
 int numAllocatedDescs ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static bool
FUNC5(void)
{
	AllocateDesc *newDescs;
	int			newMax;

	/* Quick out if array already has a free slot. */
	if (numAllocatedDescs < maxAllocatedDescs)
		return true;

	/*
	 * If the array hasn't yet been created in the current process, initialize
	 * it with FD_MINFREE / 2 elements.  In many scenarios this is as many as
	 * we will ever need, anyway.  We don't want to look at max_safe_fds
	 * immediately because set_max_safe_fds() may not have run yet.
	 */
	if (allocatedDescs == NULL)
	{
		newMax = FD_MINFREE / 2;
		newDescs = (AllocateDesc *) FUNC3(newMax * sizeof(AllocateDesc));
		/* Out of memory already?  Treat as fatal error. */
		if (newDescs == NULL)
			FUNC0(ERROR,
					(FUNC1(ERRCODE_OUT_OF_MEMORY),
					 FUNC2("out of memory")));
		allocatedDescs = newDescs;
		maxAllocatedDescs = newMax;
		return true;
	}

	/*
	 * Consider enlarging the array beyond the initial allocation used above.
	 * By the time this happens, max_safe_fds should be known accurately.
	 *
	 * We mustn't let allocated descriptors hog all the available FDs, and in
	 * practice we'd better leave a reasonable number of FDs for VFD use.  So
	 * set the maximum to max_safe_fds / 2.  (This should certainly be at
	 * least as large as the initial size, FD_MINFREE / 2.)
	 */
	newMax = max_safe_fds / 2;
	if (newMax > maxAllocatedDescs)
	{
		newDescs = (AllocateDesc *) FUNC4(allocatedDescs,
											newMax * sizeof(AllocateDesc));
		/* Treat out-of-memory as a non-fatal error. */
		if (newDescs == NULL)
			return false;
		allocatedDescs = newDescs;
		maxAllocatedDescs = newMax;
		return true;
	}

	/* Can't enlarge allocatedDescs[] any more. */
	return false;
}