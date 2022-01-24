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
struct TYPE_2__ {int /*<<< orphan*/  amname; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/ * HeapTuple ;
typedef  TYPE_1__* Form_pg_am ;

/* Variables and functions */
 int /*<<< orphan*/  AMOID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char**,char**) ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_OBJECT ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OPFAMILYAMNAMENSP ; 
 int /*<<< orphan*/  OPFAMILYOID ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HeapTuple
FUNC16(Oid amID, List *opfamilyname, bool missing_ok)
{
	char	   *schemaname;
	char	   *opfname;
	HeapTuple	htup;

	/* deconstruct the name list */
	FUNC0(opfamilyname, &schemaname, &opfname);

	if (schemaname)
	{
		/* Look in specific schema only */
		Oid			namespaceId;

		namespaceId = FUNC3(schemaname, missing_ok);
		if (!FUNC7(namespaceId))
			htup = NULL;
		else
			htup = FUNC11(OPFAMILYAMNAMENSP,
								   FUNC6(amID),
								   FUNC9(opfname),
								   FUNC6(namespaceId));
	}
	else
	{
		/* Unqualified opfamily name, so search the search path */
		Oid			opfID = FUNC8(amID, opfname);

		if (!FUNC7(opfID))
			htup = NULL;
		else
			htup = FUNC10(OPFAMILYOID, FUNC6(opfID));
	}

	if (!FUNC2(htup) && !missing_ok)
	{
		HeapTuple	amtup;

		amtup = FUNC10(AMOID, FUNC6(amID));
		if (!FUNC2(amtup))
			FUNC12(ERROR, "cache lookup failed for access method %u", amID);
		FUNC13(ERROR,
				(FUNC14(ERRCODE_UNDEFINED_OBJECT),
				 FUNC15("operator family \"%s\" does not exist for access method \"%s\"",
						FUNC4(opfamilyname),
						FUNC5(((Form_pg_am) FUNC1(amtup))->amname))));
	}

	return htup;
}