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
struct TYPE_3__ {int /*<<< orphan*/  numCols; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  TYPE_1__ SetOp ;
typedef  int /*<<< orphan*/  Plan ;

/* Variables and functions */
 int /*<<< orphan*/  SetOpCmd ; 
 int /*<<< orphan*/  SetOpStrategy ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  cmd ; 
 int /*<<< orphan*/  dupColIdx ; 
 int /*<<< orphan*/  dupCollations ; 
 int /*<<< orphan*/  dupOperators ; 
 int /*<<< orphan*/  firstFlag ; 
 int /*<<< orphan*/  flagColIdx ; 
 int /*<<< orphan*/  numCols ; 
 int /*<<< orphan*/  numGroups ; 
 int /*<<< orphan*/  strategy ; 

__attribute__((used)) static void
FUNC7(StringInfo str, const SetOp *node)
{
	FUNC4("SETOP");

	FUNC6(str, (const Plan *) node);

	FUNC1(cmd, SetOpCmd);
	FUNC1(strategy, SetOpStrategy);
	FUNC2(numCols);
	FUNC0(dupColIdx, node->numCols);
	FUNC5(dupOperators, node->numCols);
	FUNC5(dupCollations, node->numCols);
	FUNC2(flagColIdx);
	FUNC2(firstFlag);
	FUNC3(numGroups);
}