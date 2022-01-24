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
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/  BTREE_AM_OID ; 
 int /*<<< orphan*/  ERRCODE_DATATYPE_MISMATCH ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_OBJECT ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * NIL ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,char*) ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static Oid
FUNC11(List *opcname, Oid subtype)
{
	Oid			opcid;
	Oid			opInputType;

	if (opcname != NIL)
	{
		opcid = FUNC10(BTREE_AM_OID, opcname, false);

		/*
		 * Verify that the operator class accepts this datatype. Note we will
		 * accept binary compatibility.
		 */
		opInputType = FUNC9(opcid);
		if (!FUNC1(subtype, opInputType))
			FUNC4(ERROR,
					(FUNC5(ERRCODE_DATATYPE_MISMATCH),
					 FUNC7("operator class \"%s\" does not accept data type %s",
							FUNC2(opcname),
							FUNC8(subtype))));
	}
	else
	{
		opcid = FUNC0(subtype, BTREE_AM_OID);
		if (!FUNC3(opcid))
		{
			/* We spell the error message identically to ResolveOpClass */
			FUNC4(ERROR,
					(FUNC5(ERRCODE_UNDEFINED_OBJECT),
					 FUNC7("data type %s has no default operator class for access method \"%s\"",
							FUNC8(subtype), "btree"),
					 FUNC6("You must specify an operator class for the range type or define a default operator class for the subtype.")));
		}
	}

	return opcid;
}