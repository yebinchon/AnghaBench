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
struct TYPE_2__ {scalar_t__ collnamespace; int /*<<< orphan*/  collname; } ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_collation ;

/* Variables and functions */
 int /*<<< orphan*/  COLLOID ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ PG_CATALOG_NAMESPACE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  activeSearchPath ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 () ; 

bool
FUNC10(Oid collid)
{
	HeapTuple	colltup;
	Form_pg_collation collform;
	Oid			collnamespace;
	bool		visible;

	colltup = FUNC6(COLLOID, FUNC4(collid));
	if (!FUNC2(colltup))
		FUNC7(ERROR, "cache lookup failed for collation %u", collid);
	collform = (Form_pg_collation) FUNC1(colltup);

	FUNC9();

	/*
	 * Quick check: if it ain't in the path at all, it ain't visible. Items in
	 * the system namespace are surely in the path and so we needn't even do
	 * list_member_oid() for them.
	 */
	collnamespace = collform->collnamespace;
	if (collnamespace != PG_CATALOG_NAMESPACE &&
		!FUNC8(activeSearchPath, collnamespace))
		visible = false;
	else
	{
		/*
		 * If it is in the path, it might still not be visible; it could be
		 * hidden by another collation of the same name earlier in the path,
		 * or it might not work with the current DB encoding.  So we must do a
		 * slow check to see if this collation would be found by
		 * CollationGetCollid.
		 */
		char	   *collname = FUNC3(collform->collname);

		visible = (FUNC0(collname) == collid);
	}

	FUNC5(colltup);

	return visible;
}