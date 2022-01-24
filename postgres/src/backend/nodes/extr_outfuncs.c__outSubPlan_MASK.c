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
typedef  int /*<<< orphan*/  SubPlan ;
typedef  int /*<<< orphan*/  StringInfo ;

/* Variables and functions */
 int /*<<< orphan*/  SubLinkType ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  args ; 
 int /*<<< orphan*/  firstColCollation ; 
 int /*<<< orphan*/  firstColType ; 
 int /*<<< orphan*/  firstColTypmod ; 
 int /*<<< orphan*/  parParam ; 
 int /*<<< orphan*/  parallel_safe ; 
 int /*<<< orphan*/  paramIds ; 
 int /*<<< orphan*/  per_call_cost ; 
 int /*<<< orphan*/  plan_id ; 
 int /*<<< orphan*/  plan_name ; 
 int /*<<< orphan*/  setParam ; 
 int /*<<< orphan*/  startup_cost ; 
 int /*<<< orphan*/  subLinkType ; 
 int /*<<< orphan*/  testexpr ; 
 int /*<<< orphan*/  unknownEqFalse ; 
 int /*<<< orphan*/  useHashTable ; 

__attribute__((used)) static void
FUNC8(StringInfo str, const SubPlan *node)
{
	FUNC5("SUBPLAN");

	FUNC1(subLinkType, SubLinkType);
	FUNC4(testexpr);
	FUNC4(paramIds);
	FUNC3(plan_id);
	FUNC7(plan_name);
	FUNC6(firstColType);
	FUNC3(firstColTypmod);
	FUNC6(firstColCollation);
	FUNC0(useHashTable);
	FUNC0(unknownEqFalse);
	FUNC0(parallel_safe);
	FUNC4(setParam);
	FUNC4(parParam);
	FUNC4(args);
	FUNC2(startup_cost, "%.2f");
	FUNC2(per_call_cost, "%.2f");
}