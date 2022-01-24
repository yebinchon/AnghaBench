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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
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

__attribute__((used)) static bool
FUNC3(const SubPlan *a, const SubPlan *b)
{
	FUNC1(subLinkType);
	FUNC0(testexpr);
	FUNC0(paramIds);
	FUNC1(plan_id);
	FUNC2(plan_name);
	FUNC1(firstColType);
	FUNC1(firstColTypmod);
	FUNC1(firstColCollation);
	FUNC1(useHashTable);
	FUNC1(unknownEqFalse);
	FUNC1(parallel_safe);
	FUNC0(setParam);
	FUNC0(parParam);
	FUNC0(args);
	FUNC1(startup_cost);
	FUNC1(per_call_cost);

	return true;
}