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
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 int XACT_SERIALIZABLE ; 
 int XactIsoLevel ; 

bool
FUNC6(int *newval, void **extra, GucSource source)
{
	int			newXactIsoLevel = *newval;

	if (newXactIsoLevel != XactIsoLevel && FUNC4())
	{
		if (FirstSnapshotSet)
		{
			FUNC0(ERRCODE_ACTIVE_SQL_TRANSACTION);
			FUNC2("SET TRANSACTION ISOLATION LEVEL must be called before any query");
			return false;
		}
		/* We ignore a subtransaction setting it to the existing value. */
		if (FUNC3())
		{
			FUNC0(ERRCODE_ACTIVE_SQL_TRANSACTION);
			FUNC2("SET TRANSACTION ISOLATION LEVEL must not be called in a subtransaction");
			return false;
		}
		/* Can't go to serializable mode while recovery is still active */
		if (newXactIsoLevel == XACT_SERIALIZABLE && FUNC5())
		{
			FUNC0(ERRCODE_FEATURE_NOT_SUPPORTED);
			FUNC2("cannot use serializable mode in a hot standby");
			FUNC1("You can use REPEATABLE READ instead.");
			return false;
		}
	}

	return true;
}