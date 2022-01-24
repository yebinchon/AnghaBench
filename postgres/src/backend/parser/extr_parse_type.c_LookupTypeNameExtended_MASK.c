#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int int32 ;
struct TYPE_8__ {scalar_t__ names; scalar_t__ arrayBounds; int /*<<< orphan*/  location; scalar_t__ pct_type; int /*<<< orphan*/  typeOid; } ;
typedef  TYPE_1__ TypeName ;
typedef  int /*<<< orphan*/ * Type ;
struct TYPE_9__ {void* relname; void* schemaname; void* catalogname; } ;
typedef  TYPE_2__ RangeVar ;
typedef  int /*<<< orphan*/  ParseState ;
typedef  int /*<<< orphan*/  ParseCallbackState ;
typedef  int /*<<< orphan*/  Oid ;
typedef  scalar_t__ HeapTuple ;
typedef  scalar_t__ AttrNumber ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_pg_type_oid ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char**,char**) ; 
 int /*<<< orphan*/  ERRCODE_SYNTAX_ERROR ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_COLUMN ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ InvalidAttrNumber ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 scalar_t__ NIL ; 
 int /*<<< orphan*/  NOTICE ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TYPENAMENSP ; 
 int /*<<< orphan*/  TYPEOID ; 
 char* FUNC11 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*,char*,...) ; 
 void* FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC23 (scalar_t__) ; 
 int FUNC24 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC25 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC26 (scalar_t__) ; 
 TYPE_2__* FUNC27 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC30 (int /*<<< orphan*/ ) ; 
 int FUNC31 (int /*<<< orphan*/ *,TYPE_1__ const*,int /*<<< orphan*/ *) ; 

Type
FUNC32(ParseState *pstate,
					   const TypeName *typeName, int32 *typmod_p,
					   bool temp_ok, bool missing_ok)
{
	Oid			typoid;
	HeapTuple	tup;
	int32		typmod;

	if (typeName->names == NIL)
	{
		/* We have the OID already if it's an internally generated TypeName */
		typoid = typeName->typeOid;
	}
	else if (typeName->pct_type)
	{
		/* Handle %TYPE reference to type of an existing field */
		RangeVar   *rel = FUNC27(NULL, NULL, typeName->location);
		char	   *field = NULL;
		Oid			relid;
		AttrNumber	attnum;

		/* deconstruct the name list */
		switch (FUNC24(typeName->names))
		{
			case 1:
				FUNC15(ERROR,
						(FUNC16(ERRCODE_SYNTAX_ERROR),
						 FUNC17("improper %%TYPE reference (too few dotted names): %s",
								FUNC5(typeName->names)),
						 FUNC28(pstate, typeName->location)));
				break;
			case 2:
				rel->relname = FUNC30(FUNC23(typeName->names));
				field = FUNC30(FUNC25(typeName->names));
				break;
			case 3:
				rel->schemaname = FUNC30(FUNC23(typeName->names));
				rel->relname = FUNC30(FUNC25(typeName->names));
				field = FUNC30(FUNC26(typeName->names));
				break;
			case 4:
				rel->catalogname = FUNC30(FUNC23(typeName->names));
				rel->schemaname = FUNC30(FUNC25(typeName->names));
				rel->relname = FUNC30(FUNC26(typeName->names));
				field = FUNC30(FUNC22(typeName->names));
				break;
			default:
				FUNC15(ERROR,
						(FUNC16(ERRCODE_SYNTAX_ERROR),
						 FUNC17("improper %%TYPE reference (too many dotted names): %s",
								FUNC5(typeName->names)),
						 FUNC28(pstate, typeName->location)));
				break;
		}

		/*
		 * Look up the field.
		 *
		 * XXX: As no lock is taken here, this might fail in the presence of
		 * concurrent DDL.  But taking a lock would carry a performance
		 * penalty and would also require a permissions check.
		 */
		relid = FUNC9(rel, NoLock, missing_ok);
		attnum = FUNC20(relid, field);
		if (attnum == InvalidAttrNumber)
		{
			if (missing_ok)
				typoid = InvalidOid;
			else
				FUNC15(ERROR,
						(FUNC16(ERRCODE_UNDEFINED_COLUMN),
						 FUNC17("column \"%s\" of relation \"%s\" does not exist",
								field, rel->relname),
						 FUNC28(pstate, typeName->location)));
		}
		else
		{
			typoid = FUNC21(relid, attnum);

			/* this construct should never have an array indicator */
			FUNC0(typeName->arrayBounds == NIL);

			/* emit nuisance notice (intentionally not errposition'd) */
			FUNC15(NOTICE,
					(FUNC17("type reference %s converted to %s",
							FUNC11(typeName),
							FUNC18(typoid))));
		}
	}
	else
	{
		/* Normal reference to a type name */
		char	   *schemaname;
		char	   *typname;

		/* deconstruct the name list */
		FUNC1(typeName->names, &schemaname, &typname);

		if (schemaname)
		{
			/* Look in specific schema only */
			Oid			namespaceId;
			ParseCallbackState pcbstate;

			FUNC29(&pcbstate, pstate, typeName->location);

			namespaceId = FUNC4(schemaname, missing_ok);
			if (FUNC7(namespaceId))
				typoid = FUNC2(TYPENAMENSP, Anum_pg_type_oid,
										 FUNC8(typname),
										 FUNC6(namespaceId));
			else
				typoid = InvalidOid;

			FUNC13(&pcbstate);
		}
		else
		{
			/* Unqualified type name, so search the search path */
			typoid = FUNC12(typname, temp_ok);
		}

		/* If an array reference, return the array type instead */
		if (typeName->arrayBounds != NIL)
			typoid = FUNC19(typoid);
	}

	if (!FUNC7(typoid))
	{
		if (typmod_p)
			*typmod_p = -1;
		return NULL;
	}

	tup = FUNC10(TYPEOID, FUNC6(typoid));
	if (!FUNC3(tup)) /* should not happen */
		FUNC14(ERROR, "cache lookup failed for type %u", typoid);

	typmod = FUNC31(pstate, typeName, (Type) tup);

	if (typmod_p)
		*typmod_p = typmod;

	return (Type) tup;
}