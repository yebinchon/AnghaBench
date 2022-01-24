#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int ws_file; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * MyReplicationSlot ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  WALSNDSTATE_STARTUP ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ got_SIGUSR2 ; 
 scalar_t__ got_STOPPING ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int replication_active ; 
 TYPE_1__* sendSeg ; 

void
FUNC8(void)
{
	FUNC1();
	FUNC0();
	FUNC6();

	if (sendSeg->ws_file >= 0)
	{
		FUNC5(sendSeg->ws_file);
		sendSeg->ws_file = -1;
	}

	if (MyReplicationSlot != NULL)
		FUNC3();

	FUNC2();

	replication_active = false;

	if (got_STOPPING || got_SIGUSR2)
		FUNC7(0);

	/* Revert back to startup state */
	FUNC4(WALSNDSTATE_STARTUP);
}