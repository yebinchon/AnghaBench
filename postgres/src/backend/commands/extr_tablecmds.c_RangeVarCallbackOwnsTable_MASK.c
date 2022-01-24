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
typedef  TYPE_1__ RangeVar ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  ACLCHECK_NOT_OWNER ; 
 int /*<<< orphan*/  ERRCODE_WRONG_OBJECT_TYPE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char RELKIND_MATVIEW ; 
 char RELKIND_PARTITIONED_TABLE ; 
 char RELKIND_RELATION ; 
 char RELKIND_TOASTVALUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 char FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC9(const RangeVar *relation,
						  Oid relId, Oid oldRelId, void *arg)
{
	char		relkind;

	/* Nothing to do if the relation was not found. */
	if (!FUNC1(relId))
		return;

	/*
	 * If the relation does exist, check whether it's an index.  But note that
	 * the relation might have been dropped between the time we did the name
	 * lookup and now.  In that case, there's nothing to do.
	 */
	relkind = FUNC6(relId);
	if (!relkind)
		return;
	if (relkind != RELKIND_RELATION && relkind != RELKIND_TOASTVALUE &&
		relkind != RELKIND_MATVIEW && relkind != RELKIND_PARTITIONED_TABLE)
		FUNC3(ERROR,
				(FUNC4(ERRCODE_WRONG_OBJECT_TYPE),
				 FUNC5("\"%s\" is not a table or materialized view", relation->relname)));

	/* Check permissions */
	if (!FUNC8(relId, FUNC0()))
		FUNC2(ACLCHECK_NOT_OWNER, FUNC7(FUNC6(relId)), relation->relname);
}