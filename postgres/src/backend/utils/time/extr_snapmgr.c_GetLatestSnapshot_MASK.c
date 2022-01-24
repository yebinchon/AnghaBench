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
typedef  int /*<<< orphan*/  Snapshot ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FirstSnapshotSet ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  SecondarySnapshot ; 
 int /*<<< orphan*/  SecondarySnapshotData ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

Snapshot
FUNC6(void)
{
	/*
	 * We might be able to relax this, but nothing that could otherwise work
	 * needs it.
	 */
	if (FUNC4())
		FUNC5(ERROR,
			 "cannot update SecondarySnapshot during a parallel operation");

	/*
	 * So far there are no cases requiring support for GetLatestSnapshot()
	 * during logical decoding, but it wouldn't be hard to add if required.
	 */
	FUNC0(!FUNC3());

	/* If first call in transaction, go ahead and set the xact snapshot */
	if (!FirstSnapshotSet)
		return FUNC2();

	SecondarySnapshot = FUNC1(&SecondarySnapshotData);

	return SecondarySnapshot;
}