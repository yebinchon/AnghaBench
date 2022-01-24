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
struct TYPE_2__ {int /*<<< orphan*/  opcintype; int /*<<< orphan*/  oid; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_opclass ;

/* Variables and functions */
 int /*<<< orphan*/  CLAAMNAMENSP ; 
 int /*<<< orphan*/  CLAOID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char**,char**) ; 
 int /*<<< orphan*/  ERRCODE_DATATYPE_MISMATCH ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_OBJECT ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/ * NIL ; 
 char* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (char*,char*,char const*) ; 
 char const* FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int FUNC20 (int /*<<< orphan*/ *) ; 
 char* FUNC21 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (char*,char*) ; 

Oid
FUNC23(List *opclass, Oid attrType,
			   const char *accessMethodName, Oid accessMethodId)
{
	char	   *schemaname;
	char	   *opcname;
	HeapTuple	tuple;
	Form_pg_opclass opform;
	Oid			opClassId,
				opInputType;

	/*
	 * Release 7.0 removed network_ops, timespan_ops, and datetime_ops, so we
	 * ignore those opclass names so the default *_ops is used.  This can be
	 * removed in some later release.  bjm 2000/02/07
	 *
	 * Release 7.1 removes lztext_ops, so suppress that too for a while.  tgl
	 * 2000/07/30
	 *
	 * Release 7.2 renames timestamp_ops to timestamptz_ops, so suppress that
	 * too for awhile.  I'm starting to think we need a better approach. tgl
	 * 2000/10/01
	 *
	 * Release 8.0 removes bigbox_ops (which was dead code for a long while
	 * anyway).  tgl 2003/11/11
	 */
	if (FUNC20(opclass) == 1)
	{
		char	   *claname = FUNC21(FUNC19(opclass));

		if (FUNC22(claname, "network_ops") == 0 ||
			FUNC22(claname, "timespan_ops") == 0 ||
			FUNC22(claname, "datetime_ops") == 0 ||
			FUNC22(claname, "lztext_ops") == 0 ||
			FUNC22(claname, "timestamp_ops") == 0 ||
			FUNC22(claname, "bigbox_ops") == 0)
			opclass = NIL;
	}

	if (opclass == NIL)
	{
		/* no operator class specified, so find the default */
		opClassId = FUNC2(attrType, accessMethodId);
		if (!FUNC8(opClassId))
			FUNC14(ERROR,
					(FUNC15(ERRCODE_UNDEFINED_OBJECT),
					 FUNC17("data type %s has no default operator class for access method \"%s\"",
							FUNC18(attrType), accessMethodName),
					 FUNC16("You must specify an operator class for the index or define a default operator class for the data type.")));
		return opClassId;
	}

	/*
	 * Specific opclass name given, so look up the opclass.
	 */

	/* deconstruct the name list */
	FUNC0(opclass, &schemaname, &opcname);

	if (schemaname)
	{
		/* Look in specific schema only */
		Oid			namespaceId;

		namespaceId = FUNC5(schemaname, false);
		tuple = FUNC13(CLAAMNAMENSP,
								FUNC7(accessMethodId),
								FUNC10(opcname),
								FUNC7(namespaceId));
	}
	else
	{
		/* Unqualified opclass name, so search the search path */
		opClassId = FUNC9(accessMethodId, opcname);
		if (!FUNC8(opClassId))
			FUNC14(ERROR,
					(FUNC15(ERRCODE_UNDEFINED_OBJECT),
					 FUNC17("operator class \"%s\" does not exist for access method \"%s\"",
							opcname, accessMethodName)));
		tuple = FUNC12(CLAOID, FUNC7(opClassId));
	}

	if (!FUNC3(tuple))
		FUNC14(ERROR,
				(FUNC15(ERRCODE_UNDEFINED_OBJECT),
				 FUNC17("operator class \"%s\" does not exist for access method \"%s\"",
						FUNC6(opclass), accessMethodName)));

	/*
	 * Verify that the index operator class accepts this datatype.  Note we
	 * will accept binary compatibility.
	 */
	opform = (Form_pg_opclass) FUNC1(tuple);
	opClassId = opform->oid;
	opInputType = opform->opcintype;

	if (!FUNC4(attrType, opInputType))
		FUNC14(ERROR,
				(FUNC15(ERRCODE_DATATYPE_MISMATCH),
				 FUNC17("operator class \"%s\" does not accept data type %s",
						FUNC6(opclass), FUNC18(attrType))));

	FUNC11(tuple);

	return opClassId;
}