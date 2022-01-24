#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int amopstrategy; int /*<<< orphan*/  amoprighttype; int /*<<< orphan*/  amoplefttype; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_amop ;

/* Variables and functions */
 int /*<<< orphan*/  AMOPOPID ; 
 int /*<<< orphan*/  AMOP_ORDER ; 
 int /*<<< orphan*/  AMOP_SEARCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC7(Oid opno, Oid opfamily, bool ordering_op,
						   int *strategy,
						   Oid *lefttype,
						   Oid *righttype)
{
	HeapTuple	tp;
	Form_pg_amop amop_tup;

	tp = FUNC5(AMOPOPID,
						 FUNC3(opno),
						 FUNC0(ordering_op ? AMOP_ORDER : AMOP_SEARCH),
						 FUNC3(opfamily));
	if (!FUNC2(tp))
		FUNC6(ERROR, "operator %u is not a member of opfamily %u",
			 opno, opfamily);
	amop_tup = (Form_pg_amop) FUNC1(tp);
	*strategy = amop_tup->amopstrategy;
	*lefttype = amop_tup->amoplefttype;
	*righttype = amop_tup->amoprighttype;
	FUNC4(tp);
}