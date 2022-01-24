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
typedef  TYPE_1__ Agg ;

/* Variables and functions */
 int /*<<< orphan*/  AggSplit ; 
 int /*<<< orphan*/  AggStrategy ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  aggParams ; 
 int /*<<< orphan*/  aggsplit ; 
 int /*<<< orphan*/  aggstrategy ; 
 int /*<<< orphan*/  chain ; 
 int /*<<< orphan*/  groupingSets ; 
 int /*<<< orphan*/  grpColIdx ; 
 int /*<<< orphan*/  grpCollations ; 
 int /*<<< orphan*/  grpOperators ; 
 int /*<<< orphan*/  numCols ; 
 int /*<<< orphan*/  numGroups ; 

__attribute__((used)) static void
FUNC9(StringInfo str, const Agg *node)
{
	FUNC6("AGG");

	FUNC8(str, (const Plan *) node);

	FUNC2(aggstrategy, AggStrategy);
	FUNC2(aggsplit, AggSplit);
	FUNC3(numCols);
	FUNC0(grpColIdx, node->numCols);
	FUNC7(grpOperators, node->numCols);
	FUNC7(grpCollations, node->numCols);
	FUNC4(numGroups);
	FUNC1(aggParams);
	FUNC5(groupingSets);
	FUNC5(chain);
}