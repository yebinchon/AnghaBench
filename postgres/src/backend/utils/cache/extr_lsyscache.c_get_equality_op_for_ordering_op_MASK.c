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
typedef  scalar_t__ int16 ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 scalar_t__ BTGreaterStrategyNumber ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*) ; 

Oid
FUNC2(Oid opno, bool *reverse)
{
	Oid			result = InvalidOid;
	Oid			opfamily;
	Oid			opcintype;
	int16		strategy;

	/* Find the operator in pg_amop */
	if (FUNC1(opno,
								   &opfamily, &opcintype, &strategy))
	{
		/* Found a suitable opfamily, get matching equality operator */
		result = FUNC0(opfamily,
									 opcintype,
									 opcintype,
									 BTEqualStrategyNumber);
		if (reverse)
			*reverse = (strategy == BTGreaterStrategyNumber);
	}

	return result;
}