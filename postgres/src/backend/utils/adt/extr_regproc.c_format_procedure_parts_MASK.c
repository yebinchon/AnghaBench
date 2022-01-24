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
struct TYPE_3__ {int /*<<< orphan*/ * values; } ;
struct TYPE_4__ {int pronargs; TYPE_1__ proargtypes; int /*<<< orphan*/  proname; int /*<<< orphan*/  pronamespace; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_2__* Form_pg_proc ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PROCOID ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

void
FUNC12(Oid procedure_oid, List **objnames, List **objargs)
{
	HeapTuple	proctup;
	Form_pg_proc procform;
	int			nargs;
	int			i;

	proctup = FUNC5(PROCOID, FUNC3(procedure_oid));

	if (!FUNC1(proctup))
		FUNC6(ERROR, "cache lookup failed for procedure with OID %u", procedure_oid);

	procform = (Form_pg_proc) FUNC0(proctup);
	nargs = procform->pronargs;

	*objnames = FUNC10(FUNC8(procform->pronamespace),
						   FUNC11(FUNC2(procform->proname)));
	*objargs = NIL;
	for (i = 0; i < nargs; i++)
	{
		Oid			thisargtype = procform->proargtypes.values[i];

		*objargs = FUNC9(*objargs, FUNC7(thisargtype));
	}

	FUNC4(proctup);
}