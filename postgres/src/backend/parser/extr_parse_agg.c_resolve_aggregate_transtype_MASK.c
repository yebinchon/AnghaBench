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
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

Oid
FUNC5(Oid aggfuncid,
							Oid aggtranstype,
							Oid *inputTypes,
							int numArguments)
{
	/* resolve actual type of transition state, if polymorphic */
	if (FUNC1(aggtranstype))
	{
		/* have to fetch the agg's declared input types... */
		Oid		   *declaredArgTypes;
		int			agg_nargs;

		(void) FUNC3(aggfuncid, &declaredArgTypes, &agg_nargs);

		/*
		 * VARIADIC ANY aggs could have more actual than declared args, but
		 * such extra args can't affect polymorphic type resolution.
		 */
		FUNC0(agg_nargs <= numArguments);

		aggtranstype = FUNC2(inputTypes,
														declaredArgTypes,
														agg_nargs,
														aggtranstype,
														false);
		FUNC4(declaredArgTypes);
	}
	return aggtranstype;
}