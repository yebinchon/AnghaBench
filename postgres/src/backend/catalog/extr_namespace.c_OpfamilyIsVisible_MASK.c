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
struct TYPE_2__ {scalar_t__ opfnamespace; int /*<<< orphan*/  opfmethod; int /*<<< orphan*/  opfname; } ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_opfamily ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OPFAMILYOID ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ PG_CATALOG_NAMESPACE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  activeSearchPath ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 () ; 

bool
FUNC10(Oid opfid)
{
	HeapTuple	opftup;
	Form_pg_opfamily opfform;
	Oid			opfnamespace;
	bool		visible;

	opftup = FUNC6(OPFAMILYOID, FUNC3(opfid));
	if (!FUNC1(opftup))
		FUNC7(ERROR, "cache lookup failed for opfamily %u", opfid);
	opfform = (Form_pg_opfamily) FUNC0(opftup);

	FUNC9();

	/*
	 * Quick check: if it ain't in the path at all, it ain't visible. Items in
	 * the system namespace are surely in the path and so we needn't even do
	 * list_member_oid() for them.
	 */
	opfnamespace = opfform->opfnamespace;
	if (opfnamespace != PG_CATALOG_NAMESPACE &&
		!FUNC8(activeSearchPath, opfnamespace))
		visible = false;
	else
	{
		/*
		 * If it is in the path, it might still not be visible; it could be
		 * hidden by another opfamily of the same name earlier in the path. So
		 * we must do a slow check to see if this opfamily would be found by
		 * OpfamilynameGetOpfid.
		 */
		char	   *opfname = FUNC2(opfform->opfname);

		visible = (FUNC4(opfform->opfmethod, opfname) == opfid);
	}

	FUNC5(opftup);

	return visible;
}