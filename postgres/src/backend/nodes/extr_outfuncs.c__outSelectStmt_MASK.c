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
typedef  int /*<<< orphan*/  StringInfo ;
typedef  int /*<<< orphan*/  SelectStmt ;

/* Variables and functions */
 int /*<<< orphan*/  SetOperation ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
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

__attribute__((used)) static void
FUNC4(StringInfo str, const SelectStmt *node)
{
	FUNC3("SELECT");

	FUNC2(distinctClause);
	FUNC2(intoClause);
	FUNC2(targetList);
	FUNC2(fromClause);
	FUNC2(whereClause);
	FUNC2(groupClause);
	FUNC2(havingClause);
	FUNC2(windowClause);
	FUNC2(valuesLists);
	FUNC2(sortClause);
	FUNC2(limitOffset);
	FUNC2(limitCount);
	FUNC2(lockingClause);
	FUNC2(withClause);
	FUNC1(op, SetOperation);
	FUNC0(all);
	FUNC2(larg);
	FUNC2(rarg);
}