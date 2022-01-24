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
typedef  TYPE_1__ RecursiveUnion ;
typedef  int /*<<< orphan*/  Plan ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  dupColIdx ; 
 int /*<<< orphan*/  dupCollations ; 
 int /*<<< orphan*/  dupOperators ; 
 int /*<<< orphan*/  numCols ; 
 int /*<<< orphan*/  numGroups ; 
 int /*<<< orphan*/  wtParam ; 

__attribute__((used)) static void
FUNC6(StringInfo str, const RecursiveUnion *node)
{
	FUNC3("RECURSIVEUNION");

	FUNC5(str, (const Plan *) node);

	FUNC1(wtParam);
	FUNC1(numCols);
	FUNC0(dupColIdx, node->numCols);
	FUNC4(dupOperators, node->numCols);
	FUNC4(dupCollations, node->numCols);
	FUNC2(numGroups);
}