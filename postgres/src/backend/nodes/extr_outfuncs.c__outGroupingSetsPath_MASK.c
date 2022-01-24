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
typedef  int /*<<< orphan*/  GroupingSetsPath ;

/* Variables and functions */
 int /*<<< orphan*/  AggStrategy ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  aggstrategy ; 
 int /*<<< orphan*/  qual ; 
 int /*<<< orphan*/  rollups ; 
 int /*<<< orphan*/  subpath ; 

__attribute__((used)) static void
FUNC4(StringInfo str, const GroupingSetsPath *node)
{
	FUNC2("GROUPINGSETSPATH");

	FUNC3(str, (const Path *) node);

	FUNC1(subpath);
	FUNC0(aggstrategy, AggStrategy);
	FUNC1(rollups);
	FUNC1(qual);
}