#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  relname; } ;
typedef  int /*<<< orphan*/ * Relation ;
typedef  TYPE_1__ RangeVar ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  LOCKMODE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_LOCK_NOT_AVAILABLE ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_TABLE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int LOG ; 
 int /*<<< orphan*/  NoLock ; 
 int VACOPT_ANALYZE ; 
 int VACOPT_SKIP_LOCKED ; 
 int VACOPT_VACUUM ; 
 int WARNING ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

Relation
FUNC7(Oid relid, RangeVar *relation, int options,
					 bool verbose, LOCKMODE lmode)
{
	Relation	onerel;
	bool		rel_lock = true;
	int			elevel;

	FUNC0((options & (VACOPT_VACUUM | VACOPT_ANALYZE)) != 0);

	/*
	 * Open the relation and get the appropriate lock on it.
	 *
	 * There's a race condition here: the relation may have gone away since
	 * the last time we saw it.  If so, we don't need to vacuum or analyze it.
	 *
	 * If we've been asked not to wait for the relation lock, acquire it first
	 * in non-blocking mode, before calling try_relation_open().
	 */
	if (!(options & VACOPT_SKIP_LOCKED))
		onerel = FUNC6(relid, lmode);
	else if (FUNC1(relid, lmode))
		onerel = FUNC6(relid, NoLock);
	else
	{
		onerel = NULL;
		rel_lock = false;
	}

	/* if relation is opened, leave */
	if (onerel)
		return onerel;

	/*
	 * Relation could not be opened, hence generate if possible a log
	 * informing on the situation.
	 *
	 * If the RangeVar is not defined, we do not have enough information to
	 * provide a meaningful log statement.  Chances are that the caller has
	 * intentionally not provided this information so that this logging is
	 * skipped, anyway.
	 */
	if (relation == NULL)
		return NULL;

	/*
	 * Determine the log level.
	 *
	 * For manual VACUUM or ANALYZE, we emit a WARNING to match the log
	 * statements in the permission checks; otherwise, only log if the caller
	 * so requested.
	 */
	if (!FUNC2())
		elevel = WARNING;
	else if (verbose)
		elevel = LOG;
	else
		return NULL;

	if ((options & VACOPT_VACUUM) != 0)
	{
		if (!rel_lock)
			FUNC3(elevel,
					(FUNC4(ERRCODE_LOCK_NOT_AVAILABLE),
					 FUNC5("skipping vacuum of \"%s\" --- lock not available",
							relation->relname)));
		else
			FUNC3(elevel,
					(FUNC4(ERRCODE_UNDEFINED_TABLE),
					 FUNC5("skipping vacuum of \"%s\" --- relation no longer exists",
							relation->relname)));

		/*
		 * For VACUUM ANALYZE, both logs could show up, but just generate
		 * information for VACUUM as that would be the first one to be
		 * processed.
		 */
		return NULL;
	}

	if ((options & VACOPT_ANALYZE) != 0)
	{
		if (!rel_lock)
			FUNC3(elevel,
					(FUNC4(ERRCODE_LOCK_NOT_AVAILABLE),
					 FUNC5("skipping analyze of \"%s\" --- lock not available",
							relation->relname)));
		else
			FUNC3(elevel,
					(FUNC4(ERRCODE_UNDEFINED_TABLE),
					 FUNC5("skipping analyze of \"%s\" --- relation no longer exists",
							relation->relname)));
	}

	return NULL;
}