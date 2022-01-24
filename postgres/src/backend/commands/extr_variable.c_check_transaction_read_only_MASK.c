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
typedef  int /*<<< orphan*/  GucSource ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_ACTIVE_SQL_TRANSACTION ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 scalar_t__ FirstSnapshotSet ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  InitializingParallelWorker ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ XactReadOnly ; 

bool
FUNC5(bool *newval, void **extra, GucSource source)
{
	if (*newval == false && XactReadOnly && FUNC3() && !InitializingParallelWorker)
	{
		/* Can't go to r/w mode inside a r/o transaction */
		if (FUNC2())
		{
			FUNC0(ERRCODE_ACTIVE_SQL_TRANSACTION);
			FUNC1("cannot set transaction read-write mode inside a read-only transaction");
			return false;
		}
		/* Top level transaction can't change to r/w after first snapshot. */
		if (FirstSnapshotSet)
		{
			FUNC0(ERRCODE_ACTIVE_SQL_TRANSACTION);
			FUNC1("transaction read-write mode must be set before any query");
			return false;
		}
		/* Can't go to r/w mode while recovery is still active */
		if (FUNC4())
		{
			FUNC0(ERRCODE_FEATURE_NOT_SUPPORTED);
			FUNC1("cannot set transaction read-write mode during recovery");
			return false;
		}
	}

	return true;
}