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
struct TYPE_2__ {scalar_t__ indexrelid; scalar_t__ indrelid; } ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_index ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INDEXRELID ; 
 scalar_t__ InvalidOid ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,scalar_t__) ; 

Oid
FUNC7(Oid indexId, bool missing_ok)
{
	HeapTuple	tuple;
	Form_pg_index index;
	Oid			result;

	tuple = FUNC5(INDEXRELID, FUNC3(indexId));
	if (!FUNC2(tuple))
	{
		if (missing_ok)
			return InvalidOid;
		FUNC6(ERROR, "cache lookup failed for index %u", indexId);
	}
	index = (Form_pg_index) FUNC1(tuple);
	FUNC0(index->indexrelid == indexId);

	result = index->indrelid;
	FUNC4(tuple);
	return result;
}