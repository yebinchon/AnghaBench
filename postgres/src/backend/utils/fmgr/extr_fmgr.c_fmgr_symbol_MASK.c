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
struct TYPE_2__ {int prolang; scalar_t__ prosecdef; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_proc ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_pg_proc_probin ; 
 int /*<<< orphan*/  Anum_pg_proc_proconfig ; 
 int /*<<< orphan*/  Anum_pg_proc_prosrc ; 
#define  ClanguageId 130 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
#define  INTERNALlanguageId 129 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PROCOID ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
#define  SQLlanguageId 128 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC10 (char*) ; 

void
FUNC11(Oid functionId, char **mod, char **fn)
{
	HeapTuple	procedureTuple;
	Form_pg_proc procedureStruct;
	bool		isnull;
	Datum		prosrcattr;
	Datum		probinattr;

	/* Otherwise we need the pg_proc entry */
	procedureTuple = FUNC5(PROCOID, FUNC3(functionId));
	if (!FUNC2(procedureTuple))
		FUNC8(ERROR, "cache lookup failed for function %u", functionId);
	procedureStruct = (Form_pg_proc) FUNC1(procedureTuple);

	/*
	 */
	if (procedureStruct->prosecdef ||
		!FUNC9(procedureTuple, Anum_pg_proc_proconfig, NULL) ||
		FUNC0(functionId))
	{
		*mod = NULL;			/* core binary */
		*fn = FUNC10("fmgr_security_definer");
		FUNC4(procedureTuple);
		return;
	}

	/* see fmgr_info_cxt_security for the individual cases */
	switch (procedureStruct->prolang)
	{
		case INTERNALlanguageId:
			prosrcattr = FUNC6(PROCOID, procedureTuple,
										 Anum_pg_proc_prosrc, &isnull);
			if (isnull)
				FUNC8(ERROR, "null prosrc");

			*mod = NULL;		/* core binary */
			*fn = FUNC7(prosrcattr);
			break;

		case ClanguageId:
			prosrcattr = FUNC6(PROCOID, procedureTuple,
										 Anum_pg_proc_prosrc, &isnull);
			if (isnull)
				FUNC8(ERROR, "null prosrc for C function %u", functionId);

			probinattr = FUNC6(PROCOID, procedureTuple,
										 Anum_pg_proc_probin, &isnull);
			if (isnull)
				FUNC8(ERROR, "null probin for C function %u", functionId);

			/*
			 * No need to check symbol presence / API version here, already
			 * checked in fmgr_info_cxt_security.
			 */
			*mod = FUNC7(probinattr);
			*fn = FUNC7(prosrcattr);
			break;

		case SQLlanguageId:
			*mod = NULL;		/* core binary */
			*fn = FUNC10("fmgr_sql");
			break;

		default:
			*mod = NULL;
			*fn = NULL;			/* unknown, pass pointer */
			break;
	}

	FUNC4(procedureTuple);
}