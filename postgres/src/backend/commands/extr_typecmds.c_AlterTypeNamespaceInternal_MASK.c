#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ typtype; void* typrelid; void* typnamespace; int /*<<< orphan*/  typname; void* typarray; } ;
struct TYPE_12__ {int /*<<< orphan*/  t_self; } ;
struct TYPE_11__ {scalar_t__ objectSubId; void* objectId; int /*<<< orphan*/  classId; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  void* Oid ;
typedef  int /*<<< orphan*/  ObjectAddresses ;
typedef  TYPE_1__ ObjectAddress ;
typedef  TYPE_2__* HeapTuple ;
typedef  TYPE_3__* Form_pg_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,void*,void*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*,void*,void*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (void*,void*) ; 
 int /*<<< orphan*/  ERRCODE_DUPLICATE_OBJECT ; 
 int /*<<< orphan*/  ERRCODE_WRONG_OBJECT_TYPE ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 void* InvalidOid ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NamespaceRelationId ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 
 scalar_t__ FUNC10 (void*) ; 
 scalar_t__ RELKIND_COMPOSITE_TYPE ; 
 int /*<<< orphan*/  RelationRelationId ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 TYPE_2__* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TYPENAMENSP ; 
 int /*<<< orphan*/  TYPEOID ; 
 scalar_t__ TYPTYPE_COMPOSITE ; 
 scalar_t__ TYPTYPE_DOMAIN ; 
 int /*<<< orphan*/  TypeRelationId ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,void*,void*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,void*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 int /*<<< orphan*/  FUNC19 (char*,void*,...) ; 
 void* FUNC20 (void*) ; 
 int /*<<< orphan*/  FUNC21 (void*) ; 
 scalar_t__ FUNC22 (void*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_2__*) ; 
 scalar_t__ FUNC24 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

Oid
FUNC27(Oid typeOid, Oid nspOid,
						   bool isImplicitArray,
						   bool errorOnTableType,
						   ObjectAddresses *objsMoved)
{
	Relation	rel;
	HeapTuple	tup;
	Form_pg_type typform;
	Oid			oldNspOid;
	Oid			arrayOid;
	bool		isCompositeType;
	ObjectAddress thisobj;

	/*
	 * Make sure we haven't moved this object previously.
	 */
	thisobj.classId = TypeRelationId;
	thisobj.objectId = typeOid;
	thisobj.objectSubId = 0;

	if (FUNC24(&thisobj, objsMoved))
		return InvalidOid;

	rel = FUNC26(TypeRelationId, RowExclusiveLock);

	tup = FUNC11(TYPEOID, FUNC9(typeOid));
	if (!FUNC5(tup))
		FUNC15(ERROR, "cache lookup failed for type %u", typeOid);
	typform = (Form_pg_type) FUNC4(tup);

	oldNspOid = typform->typnamespace;
	arrayOid = typform->typarray;

	/* If the type is already there, we scan skip these next few checks. */
	if (oldNspOid != nspOid)
	{
		/* common checks on switching namespaces */
		FUNC3(oldNspOid, nspOid);

		/* check for duplicate name (more friendly than unique-index failure) */
		if (FUNC12(TYPENAMENSP,
								  FUNC7(&typform->typname),
								  FUNC9(nspOid)))
			FUNC16(ERROR,
					(FUNC17(ERRCODE_DUPLICATE_OBJECT),
					 FUNC19("type \"%s\" already exists in schema \"%s\"",
							FUNC8(typform->typname),
							FUNC21(nspOid))));
	}

	/* Detect whether type is a composite type (but not a table rowtype) */
	isCompositeType =
		(typform->typtype == TYPTYPE_COMPOSITE &&
		 FUNC22(typform->typrelid) == RELKIND_COMPOSITE_TYPE);

	/* Enforce not-table-type if requested */
	if (typform->typtype == TYPTYPE_COMPOSITE && !isCompositeType &&
		errorOnTableType)
		FUNC16(ERROR,
				(FUNC17(ERRCODE_WRONG_OBJECT_TYPE),
				 FUNC19("%s is a table's row type",
						FUNC20(typeOid)),
				 FUNC18("Use ALTER TABLE instead.")));

	if (oldNspOid != nspOid)
	{
		/* OK, modify the pg_type row */

		/* tup is a copy, so we can scribble directly on it */
		typform->typnamespace = nspOid;

		FUNC2(rel, &tup->t_self, tup);
	}

	/*
	 * Composite types have pg_class entries.
	 *
	 * We need to modify the pg_class tuple as well to reflect the change of
	 * schema.
	 */
	if (isCompositeType)
	{
		Relation	classRel;

		classRel = FUNC26(RelationRelationId, RowExclusiveLock);

		FUNC1(classRel, typform->typrelid,
									   oldNspOid, nspOid,
									   false, objsMoved);

		FUNC25(classRel, RowExclusiveLock);

		/*
		 * Check for constraints associated with the composite type (we don't
		 * currently support this, but probably will someday).
		 */
		FUNC0(typform->typrelid, oldNspOid,
								  nspOid, false, objsMoved);
	}
	else
	{
		/* If it's a domain, it might have constraints */
		if (typform->typtype == TYPTYPE_DOMAIN)
			FUNC0(typeOid, oldNspOid, nspOid, true,
									  objsMoved);
	}

	/*
	 * Update dependency on schema, if any --- a table rowtype has not got
	 * one, and neither does an implicit array.
	 */
	if (oldNspOid != nspOid &&
		(isCompositeType || typform->typtype != TYPTYPE_COMPOSITE) &&
		!isImplicitArray)
		if (FUNC14(TypeRelationId, typeOid,
								NamespaceRelationId, oldNspOid, nspOid) != 1)
			FUNC15(ERROR, "failed to change schema dependency for type %s",
				 FUNC20(typeOid));

	FUNC6(TypeRelationId, typeOid, 0);

	FUNC23(tup);

	FUNC25(rel, RowExclusiveLock);

	FUNC13(&thisobj, objsMoved);

	/* Recursively alter the associated array type, if any */
	if (FUNC10(arrayOid))
		FUNC27(arrayOid, nspOid, true, true, objsMoved);

	return oldNspOid;
}