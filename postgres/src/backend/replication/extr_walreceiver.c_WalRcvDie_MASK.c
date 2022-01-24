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
struct TYPE_3__ {scalar_t__ walRcvState; scalar_t__ pid; int ready_to_display; int /*<<< orphan*/  mutex; int /*<<< orphan*/ * latch; } ;
typedef  TYPE_1__ WalRcvData ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ MyProcPid ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ WALRCV_RESTARTING ; 
 scalar_t__ WALRCV_STARTING ; 
 scalar_t__ WALRCV_STOPPED ; 
 scalar_t__ WALRCV_STOPPING ; 
 scalar_t__ WALRCV_STREAMING ; 
 scalar_t__ WALRCV_WAITING ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_1__* WalRcv ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * wrconn ; 

__attribute__((used)) static void
FUNC6(int code, Datum arg)
{
	WalRcvData *walrcv = WalRcv;

	/* Ensure that all WAL records received are flushed to disk */
	FUNC4(true);

	/* Mark ourselves inactive in shared memory */
	FUNC1(&walrcv->mutex);
	FUNC0(walrcv->walRcvState == WALRCV_STREAMING ||
		   walrcv->walRcvState == WALRCV_RESTARTING ||
		   walrcv->walRcvState == WALRCV_STARTING ||
		   walrcv->walRcvState == WALRCV_WAITING ||
		   walrcv->walRcvState == WALRCV_STOPPING);
	FUNC0(walrcv->pid == MyProcPid);
	walrcv->walRcvState = WALRCV_STOPPED;
	walrcv->pid = 0;
	walrcv->ready_to_display = false;
	walrcv->latch = NULL;
	FUNC2(&walrcv->mutex);

	/* Terminate the connection gracefully. */
	if (wrconn != NULL)
		FUNC5(wrconn);

	/* Wake up the startup process to notice promptly that we're gone */
	FUNC3();
}