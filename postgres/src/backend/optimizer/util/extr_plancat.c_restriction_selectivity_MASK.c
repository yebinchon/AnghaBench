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
typedef  double float8 ;
typedef  int /*<<< orphan*/  Selectivity ;
typedef  int /*<<< orphan*/  RegProcedure ;
typedef  int /*<<< orphan*/  PlannerInfo ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 double FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,double) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

Selectivity
FUNC7(PlannerInfo *root,
						Oid operatorid,
						List *args,
						Oid inputcollid,
						int varRelid)
{
	RegProcedure oprrest = FUNC6(operatorid);
	float8		result;

	/*
	 * if the oprrest procedure is missing for whatever reason, use a
	 * selectivity of 0.5
	 */
	if (!oprrest)
		return (Selectivity) 0.5;

	result = FUNC0(FUNC3(oprrest,
												 inputcollid,
												 FUNC4(root),
												 FUNC2(operatorid),
												 FUNC4(args),
												 FUNC1(varRelid)));

	if (result < 0.0 || result > 1.0)
		FUNC5(ERROR, "invalid restriction selectivity: %f", result);

	return (Selectivity) result;
}