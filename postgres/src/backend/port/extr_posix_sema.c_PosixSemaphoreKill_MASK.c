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
typedef  int /*<<< orphan*/  sem_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(sem_t *sem)
{
#ifdef USE_NAMED_POSIX_SEMAPHORES
	/* Got to use sem_close for named semaphores */
	if (sem_close(sem) < 0)
		elog(LOG, "sem_close failed: %m");
#else
	/* Got to use sem_destroy for unnamed semaphores */
	if (FUNC2(sem) < 0)
		FUNC0(LOG, "sem_destroy failed: %m");
#endif
}