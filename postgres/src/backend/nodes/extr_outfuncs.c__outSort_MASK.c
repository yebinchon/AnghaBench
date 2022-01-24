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
typedef  TYPE_1__ Sort ;
typedef  int /*<<< orphan*/  Plan ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  collations ; 
 int /*<<< orphan*/  nullsFirst ; 
 int /*<<< orphan*/  numCols ; 
 int /*<<< orphan*/  sortColIdx ; 
 int /*<<< orphan*/  sortOperators ; 

__attribute__((used)) static void
FUNC6(StringInfo str, const Sort *node)
{
	FUNC3("SORT");

	FUNC5(str, (const Plan *) node);

	FUNC2(numCols);
	FUNC0(sortColIdx, node->numCols);
	FUNC4(sortOperators, node->numCols);
	FUNC4(collations, node->numCols);
	FUNC1(nullsFirst, node->numCols);
}