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
struct TYPE_3__ {scalar_t__ utilityStmt; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  TYPE_1__ Query ;

/* Variables and functions */
 int /*<<< orphan*/  CmdType ; 
 int /*<<< orphan*/  OverridingKind ; 
 int /*<<< orphan*/  QuerySource ; 
#define  T_CreateStmt 131 
#define  T_DeclareCursorStmt 130 
#define  T_IndexStmt 129 
#define  T_NotifyStmt 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
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
 int FUNC7 (scalar_t__) ; 
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

__attribute__((used)) static void
FUNC8(StringInfo str, const Query *node)
{
	FUNC5("QUERY");

	FUNC1(commandType, CmdType);
	FUNC1(querySource, QuerySource);
	/* we intentionally do not print the queryId field */
	FUNC0(canSetTag);

	/*
	 * Hack to work around missing outfuncs routines for a lot of the
	 * utility-statement node types.  (The only one we actually *need* for
	 * rules support is NotifyStmt.)  Someday we ought to support 'em all, but
	 * for the meantime do this to avoid getting lots of warnings when running
	 * with debug_print_parse on.
	 */
	if (node->utilityStmt)
	{
		switch (FUNC7(node->utilityStmt))
		{
			case T_CreateStmt:
			case T_IndexStmt:
			case T_NotifyStmt:
			case T_DeclareCursorStmt:
				FUNC4(utilityStmt);
				break;
			default:
				FUNC6(str, " :utilityStmt ?");
				break;
		}
	}
	else
		FUNC6(str, " :utilityStmt <>");

	FUNC2(resultRelation);
	FUNC0(hasAggs);
	FUNC0(hasWindowFuncs);
	FUNC0(hasTargetSRFs);
	FUNC0(hasSubLinks);
	FUNC0(hasDistinctOn);
	FUNC0(hasRecursive);
	FUNC0(hasModifyingCTE);
	FUNC0(hasForUpdate);
	FUNC0(hasRowSecurity);
	FUNC4(cteList);
	FUNC4(rtable);
	FUNC4(jointree);
	FUNC4(targetList);
	FUNC1(override, OverridingKind);
	FUNC4(onConflict);
	FUNC4(returningList);
	FUNC4(groupClause);
	FUNC4(groupingSets);
	FUNC4(havingQual);
	FUNC4(windowClause);
	FUNC4(distinctClause);
	FUNC4(sortClause);
	FUNC4(limitOffset);
	FUNC4(limitCount);
	FUNC4(rowMarks);
	FUNC4(setOperations);
	FUNC4(constraintDeps);
	FUNC4(withCheckOptions);
	FUNC3(stmt_location);
	FUNC3(stmt_len);
}