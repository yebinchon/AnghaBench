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
typedef  int /*<<< orphan*/  SelectStmt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  all ; 
 int /*<<< orphan*/  distinctClause ; 
 int /*<<< orphan*/  fromClause ; 
 int /*<<< orphan*/  groupClause ; 
 int /*<<< orphan*/  havingClause ; 
 int /*<<< orphan*/  intoClause ; 
 int /*<<< orphan*/  larg ; 
 int /*<<< orphan*/  limitCount ; 
 int /*<<< orphan*/  limitOffset ; 
 int /*<<< orphan*/  lockingClause ; 
 int /*<<< orphan*/  op ; 
 int /*<<< orphan*/  rarg ; 
 int /*<<< orphan*/  sortClause ; 
 int /*<<< orphan*/  targetList ; 
 int /*<<< orphan*/  valuesLists ; 
 int /*<<< orphan*/  whereClause ; 
 int /*<<< orphan*/  windowClause ; 
 int /*<<< orphan*/  withClause ; 

__attribute__((used)) static bool
FUNC2(const SelectStmt *a, const SelectStmt *b)
{
	FUNC0(distinctClause);
	FUNC0(intoClause);
	FUNC0(targetList);
	FUNC0(fromClause);
	FUNC0(whereClause);
	FUNC0(groupClause);
	FUNC0(havingClause);
	FUNC0(windowClause);
	FUNC0(valuesLists);
	FUNC0(sortClause);
	FUNC0(limitOffset);
	FUNC0(limitCount);
	FUNC0(lockingClause);
	FUNC0(withClause);
	FUNC1(op);
	FUNC1(all);
	FUNC0(larg);
	FUNC0(rarg);

	return true;
}