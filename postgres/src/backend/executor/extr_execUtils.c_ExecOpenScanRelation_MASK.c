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
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Index ;
typedef  int /*<<< orphan*/  EState ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ; 
 int /*<<< orphan*/  ERROR ; 
 int EXEC_FLAG_EXPLAIN_ONLY ; 
 int EXEC_FLAG_WITH_NO_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 

Relation
FUNC7(EState *estate, Index scanrelid, int eflags)
{
	Relation	rel;

	/* Open the relation. */
	rel = FUNC0(estate, scanrelid);

	/*
	 * Complain if we're attempting a scan of an unscannable relation, except
	 * when the query won't actually be run.  This is a slightly klugy place
	 * to do this, perhaps, but there is no better place.
	 */
	if ((eflags & (EXEC_FLAG_EXPLAIN_ONLY | EXEC_FLAG_WITH_NO_DATA)) == 0 &&
		!FUNC2(rel))
		FUNC3(ERROR,
				(FUNC4(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
				 FUNC6("materialized view \"%s\" has not been populated",
						FUNC1(rel)),
				 FUNC5("Use the REFRESH MATERIALIZED VIEW command.")));

	return rel;
}