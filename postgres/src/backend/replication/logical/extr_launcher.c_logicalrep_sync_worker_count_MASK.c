#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* workers; } ;
struct TYPE_3__ {scalar_t__ subid; int /*<<< orphan*/  relid; } ;
typedef  scalar_t__ Oid ;
typedef  TYPE_1__ LogicalRepWorker ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* LogicalRepCtx ; 
 int /*<<< orphan*/  LogicalRepWorkerLock ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int max_logical_replication_workers ; 

int
FUNC3(Oid subid)
{
	int			i;
	int			res = 0;

	FUNC0(FUNC1(LogicalRepWorkerLock));

	/* Search for attached worker for a given subscription id. */
	for (i = 0; i < max_logical_replication_workers; i++)
	{
		LogicalRepWorker *w = &LogicalRepCtx->workers[i];

		if (w->subid == subid && FUNC2(w->relid))
			res++;
	}

	return res;
}