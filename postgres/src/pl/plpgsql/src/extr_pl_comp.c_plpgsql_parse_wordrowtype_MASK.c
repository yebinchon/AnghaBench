#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  PLpgSQL_type ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_UNDEFINED_TABLE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

PLpgSQL_type *
FUNC8(char *ident)
{
	Oid			classOid;

	/*
	 * Look up the relation.  Note that because relation rowtypes have the
	 * same names as their relations, this could be handled as a type lookup
	 * equally well; we use the relation lookup code path only because the
	 * errors thrown here have traditionally referred to relations not types.
	 * But we'll make a TypeName in case we have to do re-look-up of the type.
	 */
	classOid = FUNC1(ident);
	if (!FUNC0(classOid))
		FUNC2(ERROR,
				(FUNC3(ERRCODE_UNDEFINED_TABLE),
				 FUNC4("relation \"%s\" does not exist", ident)));

	/* Build and return the row type struct */
	return FUNC7(FUNC5(classOid), -1, InvalidOid,
								  FUNC6(ident));
}