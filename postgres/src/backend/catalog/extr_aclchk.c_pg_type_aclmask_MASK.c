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
struct TYPE_2__ {int typlen; int /*<<< orphan*/  typowner; int /*<<< orphan*/  typelem; } ;
typedef  scalar_t__ Pointer ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_type ;
typedef  scalar_t__ Datum ;
typedef  int /*<<< orphan*/  AclMode ;
typedef  int /*<<< orphan*/  AclMaskHow ;
typedef  int /*<<< orphan*/  Acl ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_pg_type_typacl ; 
 int /*<<< orphan*/ * FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_OBJECT ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OBJECT_TYPE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  TYPEOID ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 

AclMode
FUNC17(Oid type_oid, Oid roleid, AclMode mask, AclMaskHow how)
{
	AclMode		result;
	HeapTuple	tuple;
	Datum		aclDatum;
	bool		isNull;
	Acl		   *acl;
	Oid			ownerId;

	Form_pg_type typeForm;

	/* Bypass permission checks for superusers */
	if (FUNC16(roleid))
		return mask;

	/*
	 * Must get the type's tuple from pg_type
	 */
	tuple = FUNC7(TYPEOID, FUNC4(type_oid));
	if (!FUNC3(tuple))
		FUNC12(ERROR,
				(FUNC13(ERRCODE_UNDEFINED_OBJECT),
				 FUNC14("type with OID %u does not exist",
						type_oid)));
	typeForm = (Form_pg_type) FUNC2(tuple);

	/*
	 * "True" array types don't manage permissions of their own; consult the
	 * element type instead.
	 */
	if (FUNC5(typeForm->typelem) && typeForm->typlen == -1)
	{
		Oid			elttype_oid = typeForm->typelem;

		FUNC6(tuple);

		tuple = FUNC7(TYPEOID, FUNC4(elttype_oid));
		/* this case is not a user-facing error, so elog not ereport */
		if (!FUNC3(tuple))
			FUNC11(ERROR, "cache lookup failed for type %u", elttype_oid);
		typeForm = (Form_pg_type) FUNC2(tuple);
	}

	/*
	 * Now get the type's owner and ACL from the tuple
	 */
	ownerId = typeForm->typowner;

	aclDatum = FUNC8(TYPEOID, tuple,
							   Anum_pg_type_typacl, &isNull);
	if (isNull)
	{
		/* No ACL, so build default ACL */
		acl = FUNC9(OBJECT_TYPE, ownerId);
		aclDatum = (Datum) 0;
	}
	else
	{
		/* detoast rel's ACL if necessary */
		acl = FUNC0(aclDatum);
	}

	result = FUNC10(acl, roleid, ownerId, mask, how);

	/* if we have a detoasted copy, free it */
	if (acl && (Pointer) acl != FUNC1(aclDatum))
		FUNC15(acl);

	FUNC6(tuple);

	return result;
}