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
typedef  int /*<<< orphan*/  SharedInvalidationMessage ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG4 ; 
 int /*<<< orphan*/ * DatabasePath ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void
FUNC8(SharedInvalidationMessage *msgs,
									 int nmsgs, bool RelcacheInitFileInval,
									 Oid dbid, Oid tsid)
{
	if (nmsgs <= 0)
		return;

	FUNC5(FUNC7(DEBUG4), "replaying commit with %d messages%s", nmsgs,
		 (RelcacheInitFileInval ? " and relcache file invalidation" : ""));

	if (RelcacheInitFileInval)
	{
		FUNC5(FUNC7(DEBUG4), "removing relcache init files for database %u",
			 dbid);

		/*
		 * RelationCacheInitFilePreInvalidate, when the invalidation message
		 * is for a specific database, requires DatabasePath to be set, but we
		 * should not use SetDatabasePath during recovery, since it is
		 * intended to be used only once by normal backends.  Hence, a quick
		 * hack: set DatabasePath directly then unset after use.
		 */
		if (FUNC1(dbid))
			DatabasePath = FUNC0(dbid, tsid);

		FUNC3();

		if (FUNC1(dbid))
		{
			FUNC6(DatabasePath);
			DatabasePath = NULL;
		}
	}

	FUNC4(msgs, nmsgs);

	if (RelcacheInitFileInval)
		FUNC2();
}