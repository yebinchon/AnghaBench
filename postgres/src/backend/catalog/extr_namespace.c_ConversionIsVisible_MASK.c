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
struct TYPE_2__ {scalar_t__ connamespace; int /*<<< orphan*/  conname; } ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_conversion ;

/* Variables and functions */
 int /*<<< orphan*/  CONVOID ; 
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
FUNC10(Oid conid)
{
	HeapTuple	contup;
	Form_pg_conversion conform;
	Oid			connamespace;
	bool		visible;

	contup = FUNC6(CONVOID, FUNC4(conid));
	if (!FUNC2(contup))
		FUNC7(ERROR, "cache lookup failed for conversion %u", conid);
	conform = (Form_pg_conversion) FUNC1(contup);

	FUNC9();

	/*
	 * Quick check: if it ain't in the path at all, it ain't visible. Items in
	 * the system namespace are surely in the path and so we needn't even do
	 * list_member_oid() for them.
	 */
	connamespace = conform->connamespace;
	if (connamespace != PG_CATALOG_NAMESPACE &&
		!FUNC8(activeSearchPath, connamespace))
		visible = false;
	else
	{
		/*
		 * If it is in the path, it might still not be visible; it could be
		 * hidden by another conversion of the same name earlier in the path.
		 * So we must do a slow check to see if this conversion would be found
		 * by ConversionGetConid.
		 */
		char	   *conname = FUNC3(conform->conname);

		visible = (FUNC0(conname) == conid);
	}

	FUNC5(contup);

	return visible;
}