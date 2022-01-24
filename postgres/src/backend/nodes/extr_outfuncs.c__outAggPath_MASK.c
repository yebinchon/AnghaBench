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
typedef  int /*<<< orphan*/  Path ;
typedef  int /*<<< orphan*/  AggPath ;

/* Variables and functions */
 int /*<<< orphan*/  AggSplit ; 
 int /*<<< orphan*/  AggStrategy ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  aggsplit ; 
 int /*<<< orphan*/  aggstrategy ; 
 int /*<<< orphan*/  groupClause ; 
 int /*<<< orphan*/  numGroups ; 
 int /*<<< orphan*/  qual ; 
 int /*<<< orphan*/  subpath ; 

__attribute__((used)) static void
FUNC5(StringInfo str, const AggPath *node)
{
	FUNC3("AGGPATH");

	FUNC4(str, (const Path *) node);

	FUNC2(subpath);
	FUNC0(aggstrategy, AggStrategy);
	FUNC0(aggsplit, AggSplit);
	FUNC1(numGroups, "%.0f");
	FUNC2(groupClause);
	FUNC2(qual);
}