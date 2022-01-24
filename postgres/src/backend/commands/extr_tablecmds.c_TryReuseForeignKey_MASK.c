#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ contype; int /*<<< orphan*/  old_conpfeqop; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  int /*<<< orphan*/  Datum ;
typedef  TYPE_1__ Constraint ;
typedef  int /*<<< orphan*/  ArrayType ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  Anum_pg_constraint_conpfeqop ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  CONSTROID ; 
 scalar_t__ CONSTR_FOREIGN ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NIL ; 
 scalar_t__ OIDOID ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC14(Oid oldId, Constraint *con)
{
	HeapTuple	tup;
	Datum		adatum;
	bool		isNull;
	ArrayType  *arr;
	Oid		   *rawarr;
	int			numkeys;
	int			i;

	FUNC5(con->contype == CONSTR_FOREIGN);
	FUNC5(con->old_conpfeqop == NIL);	/* already prepared this node */

	tup = FUNC10(CONSTROID, FUNC8(oldId));
	if (!FUNC7(tup)) /* should not happen */
		FUNC12(ERROR, "cache lookup failed for constraint %u", oldId);

	adatum = FUNC11(CONSTROID, tup,
							 Anum_pg_constraint_conpfeqop, &isNull);
	if (isNull)
		FUNC12(ERROR, "null conpfeqop for constraint %u", oldId);
	arr = FUNC6(adatum);	/* ensure not toasted */
	numkeys = FUNC1(arr)[0];
	/* test follows the one in ri_FetchConstraintInfo() */
	if (FUNC4(arr) != 1 ||
		FUNC3(arr) ||
		FUNC2(arr) != OIDOID)
		FUNC12(ERROR, "conpfeqop is not a 1-D Oid array");
	rawarr = (Oid *) FUNC0(arr);

	/* stash a List of the operator Oids in our Constraint node */
	for (i = 0; i < numkeys; i++)
		con->old_conpfeqop = FUNC13(con->old_conpfeqop, rawarr[i]);

	FUNC9(tup);
}