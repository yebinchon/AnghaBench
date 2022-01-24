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
struct TYPE_2__ {int /*<<< orphan*/  fdwowner; } ;
typedef  scalar_t__ Pointer ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_foreign_data_wrapper ;
typedef  scalar_t__ Datum ;
typedef  int /*<<< orphan*/  AclMode ;
typedef  int /*<<< orphan*/  AclMaskHow ;
typedef  int /*<<< orphan*/  Acl ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_pg_foreign_data_wrapper_fdwacl ; 
 int /*<<< orphan*/ * FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_OBJECT ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FOREIGNDATAWRAPPEROID ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OBJECT_FDW ; 
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
FUNC15(Oid fdw_oid, Oid roleid,
								AclMode mask, AclMaskHow how)
{
	AclMode		result;
	HeapTuple	tuple;
	Datum		aclDatum;
	bool		isNull;
	Acl		   *acl;
	Oid			ownerId;

	Form_pg_foreign_data_wrapper fdwForm;

	/* Bypass permission checks for superusers */
	if (FUNC14(roleid))
		return mask;

	/*
	 * Must get the FDW's tuple from pg_foreign_data_wrapper
	 */
	tuple = FUNC6(FOREIGNDATAWRAPPEROID, FUNC4(fdw_oid));
	if (!FUNC3(tuple))
		FUNC10(ERROR,
				(FUNC11(ERRCODE_UNDEFINED_OBJECT),
				 FUNC12("foreign-data wrapper with OID %u does not exist",
						fdw_oid)));
	fdwForm = (Form_pg_foreign_data_wrapper) FUNC2(tuple);

	/*
	 * Normal case: get the FDW's ACL from pg_foreign_data_wrapper
	 */
	ownerId = fdwForm->fdwowner;

	aclDatum = FUNC7(FOREIGNDATAWRAPPEROID, tuple,
							   Anum_pg_foreign_data_wrapper_fdwacl, &isNull);
	if (isNull)
	{
		/* No ACL, so build default ACL */
		acl = FUNC8(OBJECT_FDW, ownerId);
		aclDatum = (Datum) 0;
	}
	else
	{
		/* detoast rel's ACL if necessary */
		acl = FUNC0(aclDatum);
	}

	result = FUNC9(acl, roleid, ownerId, mask, how);

	/* if we have a detoasted copy, free it */
	if (acl && (Pointer) acl != FUNC1(aclDatum))
		FUNC13(acl);

	FUNC5(tuple);

	return result;
}