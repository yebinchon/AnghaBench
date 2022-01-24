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
typedef  int /*<<< orphan*/  Plan ;
typedef  TYPE_1__ GatherMerge ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  collations ; 
 int /*<<< orphan*/  initParam ; 
 int /*<<< orphan*/  nullsFirst ; 
 int /*<<< orphan*/  numCols ; 
 int /*<<< orphan*/  num_workers ; 
 int /*<<< orphan*/  rescan_param ; 
 int /*<<< orphan*/  sortColIdx ; 
 int /*<<< orphan*/  sortOperators ; 

__attribute__((used)) static void
FUNC7(StringInfo str, const GatherMerge *node)
{
	FUNC4("GATHERMERGE");

	FUNC6(str, (const Plan *) node);

	FUNC3(num_workers);
	FUNC3(rescan_param);
	FUNC3(numCols);
	FUNC0(sortColIdx, node->numCols);
	FUNC5(sortOperators, node->numCols);
	FUNC5(collations, node->numCols);
	FUNC2(nullsFirst, node->numCols);
	FUNC1(initParam);
}