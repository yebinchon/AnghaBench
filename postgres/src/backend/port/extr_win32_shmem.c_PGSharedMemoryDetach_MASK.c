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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  LOG ; 
 int /*<<< orphan*/  MEM_RELEASE ; 
 int /*<<< orphan*/ * ShmemProtectiveRegion ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * UsedShmemSegAddr ; 
 scalar_t__ UsedShmemSegID ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 

void
FUNC5(void)
{
	/*
	 * Releasing the protective region liberates an unimportant quantity of
	 * address space, but be tidy.
	 */
	if (ShmemProtectiveRegion != NULL)
	{
		if (FUNC3(ShmemProtectiveRegion, 0, MEM_RELEASE) == 0)
			FUNC4(LOG, "failed to release reserved memory region (addr=%p): error code %lu",
				 *ShmemProtectiveRegion, FUNC1());

		ShmemProtectiveRegion = NULL;
	}

	/* Unmap the view, if it's mapped */
	if (UsedShmemSegAddr != NULL)
	{
		if (!FUNC2(UsedShmemSegAddr))
			FUNC4(LOG, "could not unmap view of shared memory: error code %lu",
				 FUNC1());

		UsedShmemSegAddr = NULL;
	}

	/* And close the shmem handle, if we have one */
	if (UsedShmemSegID != INVALID_HANDLE_VALUE)
	{
		if (!FUNC0(UsedShmemSegID))
			FUNC4(LOG, "could not close handle to shared memory: error code %lu",
				 FUNC1());

		UsedShmemSegID = INVALID_HANDLE_VALUE;
	}
}