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
struct TYPE_2__ {int pronargs; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_proc ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  ArrayType ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  Anum_pg_proc_protrftypes ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ OIDOID ; 
 int /*<<< orphan*/  PROCOID ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC11 (int) ; 

int
FUNC12(HeapTuple procTup,
				  Oid **p_trftypes)
{
	Datum		protrftypes;
	ArrayType  *arr;
	int			nelems;
	bool		isNull;

	protrftypes = FUNC8(PROCOID, procTup,
								  Anum_pg_proc_protrftypes,
								  &isNull);
	if (!isNull)
	{
		/*
		 * We expect the arrays to be 1-D arrays of the right types; verify
		 * that.  For the OID and char arrays, we don't need to use
		 * deconstruct_array() since the array data is just going to look like
		 * a C array of values.
		 */
		arr = FUNC6(protrftypes);	/* ensure not toasted */
		nelems = FUNC1(arr)[0];
		if (FUNC4(arr) != 1 ||
			nelems < 0 ||
			FUNC3(arr) ||
			FUNC2(arr) != OIDOID)
			FUNC9(ERROR, "protrftypes is not a 1-D Oid array");
		FUNC5(nelems >= ((Form_pg_proc) FUNC7(procTup))->pronargs);
		*p_trftypes = (Oid *) FUNC11(nelems * sizeof(Oid));
		FUNC10(*p_trftypes, FUNC0(arr),
			   nelems * sizeof(Oid));

		return nelems;
	}
	else
		return 0;
}