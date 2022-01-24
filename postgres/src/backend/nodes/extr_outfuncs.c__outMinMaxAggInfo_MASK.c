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
typedef  int /*<<< orphan*/  MinMaxAggInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  aggfnoid ; 
 int /*<<< orphan*/  aggsortop ; 
 int /*<<< orphan*/  param ; 
 int /*<<< orphan*/  path ; 
 int /*<<< orphan*/  pathcost ; 
 int /*<<< orphan*/  target ; 

__attribute__((used)) static void
FUNC4(StringInfo str, const MinMaxAggInfo *node)
{
	FUNC2("MINMAXAGGINFO");

	FUNC3(aggfnoid);
	FUNC3(aggsortop);
	FUNC1(target);
	/* We intentionally omit subroot --- too large, not interesting enough */
	FUNC1(path);
	FUNC0(pathcost, "%.2f");
	FUNC1(param);
}