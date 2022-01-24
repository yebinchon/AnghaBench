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
typedef  int /*<<< orphan*/  Size ;
typedef  int /*<<< orphan*/  PGSemaphoreData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 

Size
FUNC1(int maxSemas)
{
#ifdef USE_NAMED_POSIX_SEMAPHORES
	/* No shared memory needed in this case */
	return 0;
#else
	/* Need a PGSemaphoreData per semaphore */
	return FUNC0(maxSemas, sizeof(PGSemaphoreData));
#endif
}