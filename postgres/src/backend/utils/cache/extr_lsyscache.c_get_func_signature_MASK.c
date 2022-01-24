#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int dim1; int /*<<< orphan*/  values; } ;
struct TYPE_4__ {TYPE_1__ proargtypes; scalar_t__ pronargs; int /*<<< orphan*/  prorettype; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_2__* Form_pg_proc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PROCOID ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (int) ; 

Oid
FUNC9(Oid funcid, Oid **argtypes, int *nargs)
{
	HeapTuple	tp;
	Form_pg_proc procstruct;
	Oid			result;

	tp = FUNC5(PROCOID, FUNC3(funcid));
	if (!FUNC2(tp))
		FUNC6(ERROR, "cache lookup failed for function %u", funcid);

	procstruct = (Form_pg_proc) FUNC1(tp);

	result = procstruct->prorettype;
	*nargs = (int) procstruct->pronargs;
	FUNC0(*nargs == procstruct->proargtypes.dim1);
	*argtypes = (Oid *) FUNC8(*nargs * sizeof(Oid));
	FUNC7(*argtypes, procstruct->proargtypes.values, *nargs * sizeof(Oid));

	FUNC4(tp);
	return result;
}