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
typedef  int /*<<< orphan*/  TypeName ;
struct TYPE_2__ {scalar_t__ typtype; scalar_t__ typelem; scalar_t__ typowner; int /*<<< orphan*/  typnamespace; int /*<<< orphan*/  oid; int /*<<< orphan*/  typrelid; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  scalar_t__ Oid ;
typedef  scalar_t__ ObjectType ;
typedef  int /*<<< orphan*/  ObjectAddress ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/ * HeapTuple ;
typedef  TYPE_1__* Form_pg_type ;
typedef  scalar_t__ AclResult ;

/* Variables and functions */
 int /*<<< orphan*/  ACLCHECK_NOT_OWNER ; 
 scalar_t__ ACLCHECK_OK ; 
 int /*<<< orphan*/  ACL_CREATE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_OBJECT ; 
 int /*<<< orphan*/  ERRCODE_WRONG_OBJECT_TYPE ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ OBJECT_DOMAIN ; 
 int /*<<< orphan*/  OBJECT_SCHEMA ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ RELKIND_COMPOSITE_TYPE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 scalar_t__ TYPTYPE_COMPOSITE ; 
 scalar_t__ TYPTYPE_DOMAIN ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TypeRelationId ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 scalar_t__ FUNC16 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC20 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC26 (int /*<<< orphan*/ *) ; 

ObjectAddress
FUNC27(List *names, Oid newOwnerId, ObjectType objecttype)
{
	TypeName   *typename;
	Oid			typeOid;
	Relation	rel;
	HeapTuple	tup;
	HeapTuple	newtup;
	Form_pg_type typTup;
	AclResult	aclresult;
	ObjectAddress address;

	rel = FUNC25(TypeRelationId, RowExclusiveLock);

	/* Make a TypeName so we can use standard type lookup machinery */
	typename = FUNC20(names);

	/* Use LookupTypeName here so that shell types can be processed */
	tup = FUNC3(NULL, typename, NULL, false);
	if (tup == NULL)
		FUNC11(ERROR,
				(FUNC12(ERRCODE_UNDEFINED_OBJECT),
				 FUNC14("type \"%s\" does not exist",
						FUNC7(typename))));
	typeOid = FUNC26(tup);

	/* Copy the syscache entry so we can scribble on it below */
	newtup = FUNC19(tup);
	FUNC6(tup);
	tup = newtup;
	typTup = (Form_pg_type) FUNC1(tup);

	/* Don't allow ALTER DOMAIN on a type */
	if (objecttype == OBJECT_DOMAIN && typTup->typtype != TYPTYPE_DOMAIN)
		FUNC11(ERROR,
				(FUNC12(ERRCODE_WRONG_OBJECT_TYPE),
				 FUNC14("%s is not a domain",
						FUNC15(typeOid))));

	/*
	 * If it's a composite type, we need to check that it really is a
	 * free-standing composite type, and not a table's rowtype. We want people
	 * to use ALTER TABLE not ALTER TYPE for that case.
	 */
	if (typTup->typtype == TYPTYPE_COMPOSITE &&
		FUNC18(typTup->typrelid) != RELKIND_COMPOSITE_TYPE)
		FUNC11(ERROR,
				(FUNC12(ERRCODE_WRONG_OBJECT_TYPE),
				 FUNC14("%s is a table's row type",
						FUNC15(typeOid)),
				 FUNC13("Use ALTER TABLE instead.")));

	/* don't allow direct alteration of array types, either */
	if (FUNC5(typTup->typelem) &&
		FUNC16(typTup->typelem) == typeOid)
		FUNC11(ERROR,
				(FUNC12(ERRCODE_WRONG_OBJECT_TYPE),
				 FUNC14("cannot alter array type %s",
						FUNC15(typeOid)),
				 FUNC13("You can alter type %s, which will alter the array type as well.",
						 FUNC15(typTup->typelem))));

	/*
	 * If the new owner is the same as the existing owner, consider the
	 * command to have succeeded.  This is for dump restoration purposes.
	 */
	if (typTup->typowner != newOwnerId)
	{
		/* Superusers can always do it */
		if (!FUNC23())
		{
			/* Otherwise, must be owner of the existing object */
			if (!FUNC22(typTup->oid, FUNC2()))
				FUNC9(ACLCHECK_NOT_OWNER, typTup->oid);

			/* Must be able to become new owner */
			FUNC10(FUNC2(), newOwnerId);

			/* New owner must have CREATE privilege on namespace */
			aclresult = FUNC21(typTup->typnamespace,
											  newOwnerId,
											  ACL_CREATE);
			if (aclresult != ACLCHECK_OK)
				FUNC8(aclresult, OBJECT_SCHEMA,
							   FUNC17(typTup->typnamespace));
		}

		FUNC0(typeOid, newOwnerId, true);
	}

	FUNC4(address, TypeRelationId, typeOid);

	/* Clean up */
	FUNC24(rel, RowExclusiveLock);

	return address;
}