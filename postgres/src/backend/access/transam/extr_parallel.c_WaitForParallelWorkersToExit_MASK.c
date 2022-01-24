#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int nworkers_launched; TYPE_1__* worker; } ;
struct TYPE_4__ {int /*<<< orphan*/ * bgwhandle; } ;
typedef  TYPE_2__ ParallelContext ;
typedef  scalar_t__ BgwHandleStatus ;

/* Variables and functions */
 scalar_t__ BGWH_POSTMASTER_DIED ; 
 int /*<<< orphan*/  ERRCODE_ADMIN_SHUTDOWN ; 
 int /*<<< orphan*/  FATAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(ParallelContext *pcxt)
{
	int			i;

	/* Wait until the workers actually die. */
	for (i = 0; i < pcxt->nworkers_launched; ++i)
	{
		BgwHandleStatus status;

		if (pcxt->worker == NULL || pcxt->worker[i].bgwhandle == NULL)
			continue;

		status = FUNC0(pcxt->worker[i].bgwhandle);

		/*
		 * If the postmaster kicked the bucket, we have no chance of cleaning
		 * up safely -- we won't be able to tell when our workers are actually
		 * dead.  This doesn't necessitate a PANIC since they will all abort
		 * eventually, but we can't safely continue this session.
		 */
		if (status == BGWH_POSTMASTER_DIED)
			FUNC1(FATAL,
					(FUNC2(ERRCODE_ADMIN_SHUTDOWN),
					 FUNC3("postmaster exited during a parallel transaction")));

		/* Release memory. */
		FUNC4(pcxt->worker[i].bgwhandle);
		pcxt->worker[i].bgwhandle = NULL;
	}
}