#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int16 ;
struct TYPE_4__ {int ssup_reverse; int /*<<< orphan*/ * comparator; } ;
typedef  TYPE_1__* SortSupport ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ BTGreaterStrategyNumber ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*) ; 

void
FUNC4(Oid orderingOp, SortSupport ssup)
{
	Oid			opfamily;
	Oid			opcintype;
	int16		strategy;

	FUNC0(ssup->comparator == NULL);

	/* Find the operator in pg_amop */
	if (!FUNC3(orderingOp, &opfamily, &opcintype,
									&strategy))
		FUNC2(ERROR, "operator %u is not a valid ordering operator",
			 orderingOp);
	ssup->ssup_reverse = (strategy == BTGreaterStrategyNumber);

	FUNC1(opfamily, opcintype, ssup);
}