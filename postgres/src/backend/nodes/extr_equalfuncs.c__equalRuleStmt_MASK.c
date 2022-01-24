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
typedef  int /*<<< orphan*/  RuleStmt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  actions ; 
 int /*<<< orphan*/  event ; 
 int /*<<< orphan*/  instead ; 
 int /*<<< orphan*/  relation ; 
 int /*<<< orphan*/  replace ; 
 int /*<<< orphan*/  rulename ; 
 int /*<<< orphan*/  whereClause ; 

__attribute__((used)) static bool
FUNC3(const RuleStmt *a, const RuleStmt *b)
{
	FUNC0(relation);
	FUNC2(rulename);
	FUNC0(whereClause);
	FUNC1(event);
	FUNC1(instead);
	FUNC0(actions);
	FUNC1(replace);

	return true;
}