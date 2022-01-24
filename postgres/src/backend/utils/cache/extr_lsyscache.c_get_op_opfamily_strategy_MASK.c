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
struct TYPE_2__ {int amopstrategy; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_amop ;

/* Variables and functions */
 int /*<<< orphan*/  AMOPOPID ; 
 int /*<<< orphan*/  AMOP_SEARCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC6(Oid opno, Oid opfamily)
{
	HeapTuple	tp;
	Form_pg_amop amop_tup;
	int			result;

	tp = FUNC5(AMOPOPID,
						 FUNC3(opno),
						 FUNC0(AMOP_SEARCH),
						 FUNC3(opfamily));
	if (!FUNC2(tp))
		return 0;
	amop_tup = (Form_pg_amop) FUNC1(tp);
	result = amop_tup->amopstrategy;
	FUNC4(tp);
	return result;
}