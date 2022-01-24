#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  relmutex; struct TYPE_5__* workers; } ;
typedef  TYPE_1__ LogicalRepWorker ;
typedef  TYPE_1__ LogicalRepCtxStruct ;

/* Variables and functions */
 int FUNC0 () ; 
 TYPE_1__* LogicalRepCtx ; 
 scalar_t__ FUNC1 (char*,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int max_logical_replication_workers ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

void
FUNC4(void)
{
	bool		found;

	LogicalRepCtx = (LogicalRepCtxStruct *)
		FUNC1("Logical Replication Launcher Data",
						FUNC0(),
						&found);

	if (!found)
	{
		int			slot;

		FUNC3(LogicalRepCtx, 0, FUNC0());

		/* Initialize memory and spin locks for each worker slot. */
		for (slot = 0; slot < max_logical_replication_workers; slot++)
		{
			LogicalRepWorker *worker = &LogicalRepCtx->workers[slot];

			FUNC3(worker, 0, sizeof(LogicalRepWorker));
			FUNC2(&worker->relmutex);
		}
	}
}