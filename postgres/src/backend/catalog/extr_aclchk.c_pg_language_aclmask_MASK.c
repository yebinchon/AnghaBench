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
struct TYPE_2__ {int /*<<< orphan*/  lanowner; } ;
typedef  scalar_t__ Pointer ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_language ;
typedef  scalar_t__ Datum ;
typedef  int /*<<< orphan*/  AclMode ;
typedef  int /*<<< orphan*/  AclMaskHow ;
typedef  int /*<<< orphan*/  Acl ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_pg_language_lanacl ; 
 int /*<<< orphan*/ * FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_OBJECT ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LANGOID ; 
 int /*<<< orphan*/  OBJECT_LANGUAGE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 

AclMode
FUNC15(Oid lang_oid, Oid roleid,
					AclMode mask, AclMaskHow how)
{
	AclMode		result;
	HeapTuple	tuple;
	Datum		aclDatum;
	bool		isNull;
	Acl		   *acl;
	Oid			ownerId;

	/* Superusers bypass all permission checking. */
	if (FUNC14(roleid))
		return mask;

	/*
	 * Get the language's ACL from pg_language
	 */
	tuple = FUNC6(LANGOID, FUNC4(lang_oid));
	if (!FUNC3(tuple))
		FUNC10(ERROR,
				(FUNC11(ERRCODE_UNDEFINED_OBJECT),
				 FUNC12("language with OID %u does not exist", lang_oid)));

	ownerId = ((Form_pg_language) FUNC2(tuple))->lanowner;

	aclDatum = FUNC7(LANGOID, tuple, Anum_pg_language_lanacl,
							   &isNull);
	if (isNull)
	{
		/* No ACL, so build default ACL */
		acl = FUNC8(OBJECT_LANGUAGE, ownerId);
		aclDatum = (Datum) 0;
	}
	else
	{
		/* detoast ACL if necessary */
		acl = FUNC0(aclDatum);
	}

	result = FUNC9(acl, roleid, ownerId, mask, how);

	/* if we have a detoasted copy, free it */
	if (acl && (Pointer) acl != FUNC1(aclDatum))
		FUNC13(acl);

	FUNC5(tuple);

	return result;
}