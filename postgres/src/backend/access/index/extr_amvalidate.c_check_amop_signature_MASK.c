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
struct TYPE_2__ {scalar_t__ oprresult; char oprkind; scalar_t__ oprleft; scalar_t__ oprright; } ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_operator ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OPEROID ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,scalar_t__) ; 

bool
FUNC6(Oid opno, Oid restype, Oid lefttype, Oid righttype)
{
	bool		result = true;
	HeapTuple	tp;
	Form_pg_operator opform;

	tp = FUNC4(OPEROID, FUNC2(opno));
	if (!FUNC1(tp))	/* shouldn't happen */
		FUNC5(ERROR, "cache lookup failed for operator %u", opno);
	opform = (Form_pg_operator) FUNC0(tp);

	if (opform->oprresult != restype || opform->oprkind != 'b' ||
		opform->oprleft != lefttype || opform->oprright != righttype)
		result = false;

	FUNC3(tp);
	return result;
}