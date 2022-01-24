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
typedef  int /*<<< orphan*/  uint32 ;
struct TYPE_2__ {int held; scalar_t__ childLocks; } ;
typedef  int /*<<< orphan*/  PREDICATELOCKTARGETTAG ;
typedef  TYPE_1__ LOCALPREDICATELOCK ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  HASH_ENTER ; 
 int /*<<< orphan*/  LocalPredicateLockHash ; 
 int /*<<< orphan*/  MySerializableXact ; 
 scalar_t__ PREDLOCKTAG_TUPLE ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void
FUNC8(const PREDICATELOCKTARGETTAG *targettag)
{
	uint32		targettaghash;
	bool		found;
	LOCALPREDICATELOCK *locallock;

	/* Do we have the lock already, or a covering lock? */
	if (FUNC5(targettag))
		return;

	if (FUNC1(targettag))
		return;

	/* the same hash and LW lock apply to the lock target and the local lock. */
	targettaghash = FUNC6(targettag);

	/* Acquire lock in local table */
	locallock = (LOCALPREDICATELOCK *)
		FUNC7(LocalPredicateLockHash,
									targettag, targettaghash,
									HASH_ENTER, &found);
	locallock->held = true;
	if (!found)
		locallock->childLocks = 0;

	/* Actually create the lock */
	FUNC2(targettag, targettaghash, MySerializableXact);

	/*
	 * Lock has been acquired. Check whether it should be promoted to a
	 * coarser granularity, or whether there are finer-granularity locks to
	 * clean up.
	 */
	if (FUNC0(targettag))
	{
		/*
		 * Lock request was promoted to a coarser-granularity lock, and that
		 * lock was acquired. It will delete this lock and any of its
		 * children, so we're done.
		 */
	}
	else
	{
		/* Clean up any finer-granularity locks */
		if (FUNC4(*targettag) != PREDLOCKTAG_TUPLE)
			FUNC3(targettag);
	}
}