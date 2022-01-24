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
struct TYPE_4__ {int /*<<< orphan*/  replace; int /*<<< orphan*/  instead; int /*<<< orphan*/  event; int /*<<< orphan*/  rulename; int /*<<< orphan*/  relation; } ;
typedef  TYPE_1__ RuleStmt ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  ObjectAddress ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/  AccessExclusiveLock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char const*,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 

ObjectAddress
FUNC3(RuleStmt *stmt, const char *queryString)
{
	List	   *actions;
	Node	   *whereClause;
	Oid			relId;

	/* Parse analysis. */
	FUNC2(stmt, queryString, &actions, &whereClause);

	/*
	 * Find and lock the relation.  Lock level should match
	 * DefineQueryRewrite.
	 */
	relId = FUNC1(stmt->relation, AccessExclusiveLock, false);

	/* ... and execute */
	return FUNC0(stmt->rulename,
							  relId,
							  whereClause,
							  stmt->event,
							  stmt->instead,
							  stmt->replace,
							  actions);
}