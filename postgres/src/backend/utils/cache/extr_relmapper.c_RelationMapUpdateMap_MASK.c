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
typedef  int /*<<< orphan*/  RelMapFile ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  active_local_updates ; 
 int /*<<< orphan*/  active_shared_updates ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  local_map ; 
 int /*<<< orphan*/  pending_local_updates ; 
 int /*<<< orphan*/  pending_shared_updates ; 
 int /*<<< orphan*/  shared_map ; 

void
FUNC5(Oid relationId, Oid fileNode, bool shared,
					 bool immediate)
{
	RelMapFile *map;

	if (FUNC1())
	{
		/*
		 * In bootstrap mode, the mapping gets installed in permanent map.
		 */
		if (shared)
			map = &shared_map;
		else
			map = &local_map;
	}
	else
	{
		/*
		 * We don't currently support map changes within subtransactions, or
		 * when in parallel mode.  This could be done with more bookkeeping
		 * infrastructure, but it doesn't presently seem worth it.
		 */
		if (FUNC0() > 1)
			FUNC4(ERROR, "cannot change relation mapping within subtransaction");

		if (FUNC2())
			FUNC4(ERROR, "cannot change relation mapping in parallel mode");

		if (immediate)
		{
			/* Make it active, but only locally */
			if (shared)
				map = &active_shared_updates;
			else
				map = &active_local_updates;
		}
		else
		{
			/* Make it pending */
			if (shared)
				map = &pending_shared_updates;
			else
				map = &pending_local_updates;
		}
	}
	FUNC3(map, relationId, fileNode, true);
}