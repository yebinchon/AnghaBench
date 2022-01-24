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
typedef  int /*<<< orphan*/  int16 ;
struct TYPE_2__ {int /*<<< orphan*/  amproc; } ;
typedef  int /*<<< orphan*/  RegProcedure ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_amproc ;

/* Variables and functions */
 int /*<<< orphan*/  AMPROCNUM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

Oid
FUNC6(Oid opfamily, Oid lefttype, Oid righttype, int16 procnum)
{
	HeapTuple	tp;
	Form_pg_amproc amproc_tup;
	RegProcedure result;

	tp = FUNC5(AMPROCNUM,
						 FUNC3(opfamily),
						 FUNC3(lefttype),
						 FUNC3(righttype),
						 FUNC2(procnum));
	if (!FUNC1(tp))
		return InvalidOid;
	amproc_tup = (Form_pg_amproc) FUNC0(tp);
	result = amproc_tup->amproc;
	FUNC4(tp);
	return result;
}