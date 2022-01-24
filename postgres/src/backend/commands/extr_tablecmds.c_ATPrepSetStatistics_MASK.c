#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int16 ;
struct TYPE_7__ {TYPE_1__* rd_rel; } ;
struct TYPE_6__ {scalar_t__ relkind; } ;
typedef  TYPE_2__* Relation ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  LOCKMODE ;

/* Variables and functions */
 int /*<<< orphan*/  ACLCHECK_NOT_OWNER ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERRCODE_WRONG_OBJECT_TYPE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ RELKIND_FOREIGN_TABLE ; 
 scalar_t__ RELKIND_INDEX ; 
 scalar_t__ RELKIND_MATVIEW ; 
 scalar_t__ RELKIND_PARTITIONED_INDEX ; 
 scalar_t__ RELKIND_PARTITIONED_TABLE ; 
 scalar_t__ RELKIND_RELATION ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(Relation rel, const char *colName, int16 colNum, Node *newValue, LOCKMODE lockmode)
{
	/*
	 * We do our own permission checking because (a) we want to allow SET
	 * STATISTICS on indexes (for expressional index columns), and (b) we want
	 * to allow SET STATISTICS on system catalogs without requiring
	 * allowSystemTableMods to be turned on.
	 */
	if (rel->rd_rel->relkind != RELKIND_RELATION &&
		rel->rd_rel->relkind != RELKIND_MATVIEW &&
		rel->rd_rel->relkind != RELKIND_INDEX &&
		rel->rd_rel->relkind != RELKIND_PARTITIONED_INDEX &&
		rel->rd_rel->relkind != RELKIND_FOREIGN_TABLE &&
		rel->rd_rel->relkind != RELKIND_PARTITIONED_TABLE)
		FUNC4(ERROR,
				(FUNC5(ERRCODE_WRONG_OBJECT_TYPE),
				 FUNC6("\"%s\" is not a table, materialized view, index, or foreign table",
						FUNC1(rel))));

	/*
	 * We allow referencing columns by numbers only for indexes, since table
	 * column numbers could contain gaps if columns are later dropped.
	 */
	if (rel->rd_rel->relkind != RELKIND_INDEX &&
		rel->rd_rel->relkind != RELKIND_PARTITIONED_INDEX &&
		!colName)
		FUNC4(ERROR,
				(FUNC5(ERRCODE_FEATURE_NOT_SUPPORTED),
				 FUNC6("cannot refer to non-index column by number")));

	/* Permissions checks */
	if (!FUNC8(FUNC2(rel), FUNC0()))
		FUNC3(ACLCHECK_NOT_OWNER, FUNC7(rel->rd_rel->relkind),
					   FUNC1(rel));
}