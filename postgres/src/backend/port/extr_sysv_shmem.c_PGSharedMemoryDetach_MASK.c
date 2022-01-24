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
 int /*<<< orphan*/ * AnonymousShmem ; 
 int /*<<< orphan*/  AnonymousShmemSize ; 
 int /*<<< orphan*/  LOG ; 
 int /*<<< orphan*/ * UsedShmemSegAddr ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(void)
{
	if (UsedShmemSegAddr != NULL)
	{
		if ((FUNC2(UsedShmemSegAddr) < 0)
#if defined(EXEC_BACKEND) && defined(__CYGWIN__)
		/* Work-around for cygipc exec bug */
			&& shmdt(NULL) < 0
#endif
			)
			FUNC0(LOG, "shmdt(%p) failed: %m", UsedShmemSegAddr);
		UsedShmemSegAddr = NULL;
	}

	if (AnonymousShmem != NULL)
	{
		if (FUNC1(AnonymousShmem, AnonymousShmemSize) < 0)
			FUNC0(LOG, "munmap(%p, %zu) failed: %m",
				 AnonymousShmem, AnonymousShmemSize);
		AnonymousShmem = NULL;
	}
}