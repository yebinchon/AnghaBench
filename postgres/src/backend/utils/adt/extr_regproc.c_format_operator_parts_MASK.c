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
struct TYPE_2__ {scalar_t__ oprright; scalar_t__ oprleft; int /*<<< orphan*/  oprname; int /*<<< orphan*/  oprnamespace; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_operator ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OPEROID ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

void
FUNC12(Oid operator_oid, List **objnames, List **objargs)
{
	HeapTuple	opertup;
	Form_pg_operator oprForm;

	opertup = FUNC5(OPEROID, FUNC3(operator_oid));
	if (!FUNC1(opertup))
		FUNC6(ERROR, "cache lookup failed for operator with OID %u",
			 operator_oid);

	oprForm = (Form_pg_operator) FUNC0(opertup);
	*objnames = FUNC10(FUNC8(oprForm->oprnamespace),
						   FUNC11(FUNC2(oprForm->oprname)));
	*objargs = NIL;
	if (oprForm->oprleft)
		*objargs = FUNC9(*objargs,
						   FUNC7(oprForm->oprleft));
	if (oprForm->oprright)
		*objargs = FUNC9(*objargs,
						   FUNC7(oprForm->oprright));

	FUNC4(opertup);
}