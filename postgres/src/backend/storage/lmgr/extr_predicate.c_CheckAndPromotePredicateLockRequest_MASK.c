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
struct TYPE_2__ {int held; int childLocks; } ;
typedef  int /*<<< orphan*/  PREDICATELOCKTARGETTAG ;
typedef  TYPE_1__ LOCALPREDICATELOCK ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  HASH_ENTER ; 
 int /*<<< orphan*/  LocalPredicateLockHash ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static bool
FUNC4(const PREDICATELOCKTARGETTAG *reqtag)
{
	PREDICATELOCKTARGETTAG targettag,
				nexttag,
				promotiontag;
	LOCALPREDICATELOCK *parentlock;
	bool		found,
				promote;

	promote = false;

	targettag = *reqtag;

	/* check parents iteratively */
	while (FUNC0(&targettag, &nexttag))
	{
		targettag = nexttag;
		parentlock = (LOCALPREDICATELOCK *) FUNC3(LocalPredicateLockHash,
														&targettag,
														HASH_ENTER,
														&found);
		if (!found)
		{
			parentlock->held = false;
			parentlock->childLocks = 1;
		}
		else
			parentlock->childLocks++;

		if (parentlock->childLocks >
			FUNC1(&targettag))
		{
			/*
			 * We should promote to this parent lock. Continue to check its
			 * ancestors, however, both to get their child counts right and to
			 * check whether we should just go ahead and promote to one of
			 * them.
			 */
			promotiontag = targettag;
			promote = true;
		}
	}

	if (promote)
	{
		/* acquire coarsest ancestor eligible for promotion */
		FUNC2(&promotiontag);
		return true;
	}
	else
		return false;
}