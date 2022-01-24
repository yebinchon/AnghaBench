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
typedef  scalar_t__ TransactionId ;
struct TYPE_5__ {int numPrepXacts; TYPE_1__** prepXacts; } ;
struct TYPE_4__ {scalar_t__ xid; scalar_t__ ondisk; int /*<<< orphan*/  inredo; } ;
typedef  TYPE_1__* GlobalTransaction ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DEBUG2 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int) ; 
 TYPE_2__* TwoPhaseState ; 
 int /*<<< orphan*/  TwoPhaseStateLock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,scalar_t__) ; 

void
FUNC6(TransactionId xid, bool giveWarning)
{
	GlobalTransaction gxact = NULL;
	int			i;
	bool		found = false;

	FUNC0(FUNC1(TwoPhaseStateLock, LW_EXCLUSIVE));
	FUNC0(FUNC2());

	for (i = 0; i < TwoPhaseState->numPrepXacts; i++)
	{
		gxact = TwoPhaseState->prepXacts[i];

		if (gxact->xid == xid)
		{
			FUNC0(gxact->inredo);
			found = true;
			break;
		}
	}

	/*
	 * Just leave if there is nothing, this is expected during WAL replay.
	 */
	if (!found)
		return;

	/*
	 * And now we can clean up any files we may have left.
	 */
	FUNC5(DEBUG2, "removing 2PC data for transaction %u", xid);
	if (gxact->ondisk)
		FUNC4(xid, giveWarning);
	FUNC3(gxact);

	return;
}