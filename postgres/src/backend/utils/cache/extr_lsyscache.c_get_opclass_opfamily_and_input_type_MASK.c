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
struct TYPE_2__ {int /*<<< orphan*/  opcintype; int /*<<< orphan*/  opcfamily; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_opclass ;

/* Variables and functions */
 int /*<<< orphan*/  CLAOID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool
FUNC5(Oid opclass, Oid *opfamily, Oid *opcintype)
{
	HeapTuple	tp;
	Form_pg_opclass cla_tup;

	tp = FUNC4(CLAOID, FUNC2(opclass));
	if (!FUNC1(tp))
		return false;

	cla_tup = (Form_pg_opclass) FUNC0(tp);

	*opfamily = cla_tup->opcfamily;
	*opcintype = cla_tup->opcintype;

	FUNC3(tp);

	return true;
}