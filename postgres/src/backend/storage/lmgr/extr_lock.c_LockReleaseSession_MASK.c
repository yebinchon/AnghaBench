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
typedef  scalar_t__ LOCKMETHODID ;
typedef  int /*<<< orphan*/  LOCALLOCK ;
typedef  int /*<<< orphan*/  HASH_SEQ_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LockMethodLocalHash ; 
 int /*<<< orphan*/  LockMethods ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

void
FUNC6(LOCKMETHODID lockmethodid)
{
	HASH_SEQ_STATUS status;
	LOCALLOCK  *locallock;

	if (lockmethodid <= 0 || lockmethodid >= FUNC5(LockMethods))
		FUNC2(ERROR, "unrecognized lock method: %d", lockmethodid);

	FUNC3(&status, LockMethodLocalHash);

	while ((locallock = (LOCALLOCK *) FUNC4(&status)) != NULL)
	{
		/* Ignore items that are not of the specified lock method */
		if (FUNC0(*locallock) != lockmethodid)
			continue;

		FUNC1(locallock, true);
	}
}