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
typedef  int /*<<< orphan*/  Query ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  canSetTag ; 
 int /*<<< orphan*/  commandType ; 
 int /*<<< orphan*/  constraintDeps ; 
 int /*<<< orphan*/  cteList ; 
 int /*<<< orphan*/  distinctClause ; 
 int /*<<< orphan*/  groupClause ; 
 int /*<<< orphan*/  groupingSets ; 
 int /*<<< orphan*/  hasAggs ; 
 int /*<<< orphan*/  hasDistinctOn ; 
 int /*<<< orphan*/  hasForUpdate ; 
 int /*<<< orphan*/  hasModifyingCTE ; 
 int /*<<< orphan*/  hasRecursive ; 
 int /*<<< orphan*/  hasRowSecurity ; 
 int /*<<< orphan*/  hasSubLinks ; 
 int /*<<< orphan*/  hasTargetSRFs ; 
 int /*<<< orphan*/  hasWindowFuncs ; 
 int /*<<< orphan*/  havingQual ; 
 int /*<<< orphan*/  jointree ; 
 int /*<<< orphan*/  limitCount ; 
 int /*<<< orphan*/  limitOffset ; 
 int /*<<< orphan*/  onConflict ; 
 int /*<<< orphan*/  override ; 
 int /*<<< orphan*/  querySource ; 
 int /*<<< orphan*/  resultRelation ; 
 int /*<<< orphan*/  returningList ; 
 int /*<<< orphan*/  rowMarks ; 
 int /*<<< orphan*/  rtable ; 
 int /*<<< orphan*/  setOperations ; 
 int /*<<< orphan*/  sortClause ; 
 int /*<<< orphan*/  stmt_len ; 
 int /*<<< orphan*/  stmt_location ; 
 int /*<<< orphan*/  targetList ; 
 int /*<<< orphan*/  utilityStmt ; 
 int /*<<< orphan*/  windowClause ; 
 int /*<<< orphan*/  withCheckOptions ; 

__attribute__((used)) static bool
FUNC3(const Query *a, const Query *b)
{
	FUNC2(commandType);
	FUNC2(querySource);
	/* we intentionally ignore queryId, since it might not be set */
	FUNC2(canSetTag);
	FUNC1(utilityStmt);
	FUNC2(resultRelation);
	FUNC2(hasAggs);
	FUNC2(hasWindowFuncs);
	FUNC2(hasTargetSRFs);
	FUNC2(hasSubLinks);
	FUNC2(hasDistinctOn);
	FUNC2(hasRecursive);
	FUNC2(hasModifyingCTE);
	FUNC2(hasForUpdate);
	FUNC2(hasRowSecurity);
	FUNC1(cteList);
	FUNC1(rtable);
	FUNC1(jointree);
	FUNC1(targetList);
	FUNC2(override);
	FUNC1(onConflict);
	FUNC1(returningList);
	FUNC1(groupClause);
	FUNC1(groupingSets);
	FUNC1(havingQual);
	FUNC1(windowClause);
	FUNC1(distinctClause);
	FUNC1(sortClause);
	FUNC1(limitOffset);
	FUNC1(limitCount);
	FUNC1(rowMarks);
	FUNC1(setOperations);
	FUNC1(constraintDeps);
	FUNC1(withCheckOptions);
	FUNC0(stmt_location);
	FUNC0(stmt_len);

	return true;
}