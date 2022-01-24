#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int relkind; int /*<<< orphan*/  relowner; } ;
typedef  scalar_t__ Pointer ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_class ;
typedef  scalar_t__ Datum ;
typedef  int AclMode ;
typedef  int /*<<< orphan*/  AclMaskHow ;
typedef  int /*<<< orphan*/  Acl ;

/* Variables and functions */
 int ACL_DELETE ; 
 int ACL_INSERT ; 
 int ACL_TRUNCATE ; 
 int ACL_UPDATE ; 
 int ACL_USAGE ; 
 int /*<<< orphan*/  Anum_pg_class_relacl ; 
 int /*<<< orphan*/  DEBUG2 ; 
 int /*<<< orphan*/ * FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_TABLE ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  OBJECT_SEQUENCE ; 
 int /*<<< orphan*/  OBJECT_TABLE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
#define  RELKIND_SEQUENCE 128 
 int RELKIND_VIEW ; 
 int /*<<< orphan*/  RELOID ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  allowSystemTableMods ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 

AclMode
FUNC17(Oid table_oid, Oid roleid,
				 AclMode mask, AclMaskHow how)
{
	AclMode		result;
	HeapTuple	tuple;
	Form_pg_class classForm;
	Datum		aclDatum;
	bool		isNull;
	Acl		   *acl;
	Oid			ownerId;

	/*
	 * Must get the relation's tuple from pg_class
	 */
	tuple = FUNC7(RELOID, FUNC5(table_oid));
	if (!FUNC3(tuple))
		FUNC12(ERROR,
				(FUNC13(ERRCODE_UNDEFINED_TABLE),
				 FUNC14("relation with OID %u does not exist",
						table_oid)));
	classForm = (Form_pg_class) FUNC2(tuple);

	/*
	 * Deny anyone permission to update a system catalog unless
	 * pg_authid.rolsuper is set.  Also allow it if allowSystemTableMods.
	 *
	 * As of 7.4 we have some updatable system views; those shouldn't be
	 * protected in this way.  Assume the view rules can take care of
	 * themselves.  ACL_USAGE is if we ever have system sequences.
	 */
	if ((mask & (ACL_INSERT | ACL_UPDATE | ACL_DELETE | ACL_TRUNCATE | ACL_USAGE)) &&
		FUNC4(table_oid, classForm) &&
		classForm->relkind != RELKIND_VIEW &&
		!FUNC16(roleid) &&
		!allowSystemTableMods)
	{
#ifdef ACLDEBUG
		elog(DEBUG2, "permission denied for system catalog update");
#endif
		mask &= ~(ACL_INSERT | ACL_UPDATE | ACL_DELETE | ACL_TRUNCATE | ACL_USAGE);
	}

	/*
	 * Otherwise, superusers bypass all permission-checking.
	 */
	if (FUNC16(roleid))
	{
#ifdef ACLDEBUG
		elog(DEBUG2, "OID %u is superuser, home free", roleid);
#endif
		FUNC6(tuple);
		return mask;
	}

	/*
	 * Normal case: get the relation's ACL from pg_class
	 */
	ownerId = classForm->relowner;

	aclDatum = FUNC8(RELOID, tuple, Anum_pg_class_relacl,
							   &isNull);
	if (isNull)
	{
		/* No ACL, so build default ACL */
		switch (classForm->relkind)
		{
			case RELKIND_SEQUENCE:
				acl = FUNC9(OBJECT_SEQUENCE, ownerId);
				break;
			default:
				acl = FUNC9(OBJECT_TABLE, ownerId);
				break;
		}
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