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
typedef  int /*<<< orphan*/ * TupleDesc ;
struct TYPE_2__ {scalar_t__ prorettype; int /*<<< orphan*/  prokind; } ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_proc ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_pg_proc_proallargtypes ; 
 int /*<<< orphan*/  Anum_pg_proc_proargmodes ; 
 int /*<<< orphan*/  Anum_pg_proc_proargnames ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PROCOID ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ RECORDOID ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

TupleDesc
FUNC6(HeapTuple procTuple)
{
	Form_pg_proc procform = (Form_pg_proc) FUNC1(procTuple);
	Datum		proallargtypes;
	Datum		proargmodes;
	Datum		proargnames;
	bool		isnull;

	/* Return NULL if the function isn't declared to return RECORD */
	if (procform->prorettype != RECORDOID)
		return NULL;

	/* If there are no OUT parameters, return NULL */
	if (FUNC5(procTuple, Anum_pg_proc_proallargtypes, NULL) ||
		FUNC5(procTuple, Anum_pg_proc_proargmodes, NULL))
		return NULL;

	/* Get the data out of the tuple */
	proallargtypes = FUNC3(PROCOID, procTuple,
									 Anum_pg_proc_proallargtypes,
									 &isnull);
	FUNC0(!isnull);
	proargmodes = FUNC3(PROCOID, procTuple,
								  Anum_pg_proc_proargmodes,
								  &isnull);
	FUNC0(!isnull);
	proargnames = FUNC3(PROCOID, procTuple,
								  Anum_pg_proc_proargnames,
								  &isnull);
	if (isnull)
		proargnames = FUNC2(NULL);	/* just to be sure */

	return FUNC4(procform->prokind,
										   proallargtypes,
										   proargmodes,
										   proargnames);
}