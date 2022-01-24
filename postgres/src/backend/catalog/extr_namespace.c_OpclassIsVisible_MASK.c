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
struct TYPE_2__ {scalar_t__ opcnamespace; int /*<<< orphan*/  opcmethod; int /*<<< orphan*/  opcname; } ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_opclass ;

/* Variables and functions */
 int /*<<< orphan*/  CLAOID ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
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
FUNC10(Oid opcid)
{
	HeapTuple	opctup;
	Form_pg_opclass opcform;
	Oid			opcnamespace;
	bool		visible;

	opctup = FUNC6(CLAOID, FUNC3(opcid));
	if (!FUNC1(opctup))
		FUNC7(ERROR, "cache lookup failed for opclass %u", opcid);
	opcform = (Form_pg_opclass) FUNC0(opctup);

	FUNC9();

	/*
	 * Quick check: if it ain't in the path at all, it ain't visible. Items in
	 * the system namespace are surely in the path and so we needn't even do
	 * list_member_oid() for them.
	 */
	opcnamespace = opcform->opcnamespace;
	if (opcnamespace != PG_CATALOG_NAMESPACE &&
		!FUNC8(activeSearchPath, opcnamespace))
		visible = false;
	else
	{
		/*
		 * If it is in the path, it might still not be visible; it could be
		 * hidden by another opclass of the same name earlier in the path. So
		 * we must do a slow check to see if this opclass would be found by
		 * OpclassnameGetOpcid.
		 */
		char	   *opcname = FUNC2(opcform->opcname);

		visible = (FUNC4(opcform->opcmethod, opcname) == opcid);
	}

	FUNC5(opctup);

	return visible;
}