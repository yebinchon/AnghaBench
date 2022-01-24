#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  relname; } ;
typedef  TYPE_1__ RangeVar ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  NOTICE ; 
 int REINDEXOPT_REPORT_PROGRESS ; 
 int REINDEX_REL_CHECK_CONSTRAINTS ; 
 int REINDEX_REL_PROCESS_TOAST ; 
 int /*<<< orphan*/  RangeVarCallbackOwnsTable ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ShareLock ; 
 int /*<<< orphan*/  ShareUpdateExclusiveLock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int) ; 

Oid
FUNC5(RangeVar *relation, int options, bool concurrent)
{
	Oid			heapOid;
	bool		result;

	/* The lock level used here should match reindex_relation(). */
	heapOid = FUNC0(relation,
									   concurrent ? ShareUpdateExclusiveLock : ShareLock,
									   0,
									   RangeVarCallbackOwnsTable, NULL);

	if (concurrent)
	{
		result = FUNC1(heapOid, options);

		if (!result)
			FUNC2(NOTICE,
					(FUNC3("table \"%s\" has no indexes that can be reindexed concurrently",
							relation->relname)));
	}
	else
	{
		result = FUNC4(heapOid,
								  REINDEX_REL_PROCESS_TOAST |
								  REINDEX_REL_CHECK_CONSTRAINTS,
								  options | REINDEXOPT_REPORT_PROGRESS);
		if (!result)
			FUNC2(NOTICE,
					(FUNC3("table \"%s\" has no indexes to reindex",
							relation->relname)));
	}

	return heapOid;
}