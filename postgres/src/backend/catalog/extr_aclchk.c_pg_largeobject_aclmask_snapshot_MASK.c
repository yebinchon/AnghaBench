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
struct TYPE_2__ {int /*<<< orphan*/  lomowner; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  Snapshot ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  scalar_t__ Pointer ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_largeobject_metadata ;
typedef  scalar_t__ Datum ;
typedef  int /*<<< orphan*/  AclMode ;
typedef  int /*<<< orphan*/  AclMaskHow ;
typedef  int /*<<< orphan*/  Acl ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_pg_largeobject_metadata_lomacl ; 
 int /*<<< orphan*/  Anum_pg_largeobject_metadata_oid ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/ * FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_OBJECT ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LargeObjectMetadataOidIndexId ; 
 int /*<<< orphan*/  LargeObjectMetadataRelationId ; 
 int /*<<< orphan*/  OBJECT_LARGEOBJECT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

AclMode
FUNC20(Oid lobj_oid, Oid roleid,
								AclMode mask, AclMaskHow how,
								Snapshot snapshot)
{
	AclMode		result;
	Relation	pg_lo_meta;
	ScanKeyData entry[1];
	SysScanDesc scan;
	HeapTuple	tuple;
	Datum		aclDatum;
	bool		isNull;
	Acl		   *acl;
	Oid			ownerId;

	/* Superusers bypass all permission checking. */
	if (FUNC14(roleid))
		return mask;

	/*
	 * Get the largeobject's ACL from pg_largeobject_metadata
	 */
	pg_lo_meta = FUNC19(LargeObjectMetadataRelationId,
							AccessShareLock);

	FUNC6(&entry[0],
				Anum_pg_largeobject_metadata_oid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC4(lobj_oid));

	scan = FUNC15(pg_lo_meta,
							  LargeObjectMetadataOidIndexId, true,
							  snapshot, 1, entry);

	tuple = FUNC17(scan);
	if (!FUNC3(tuple))
		FUNC9(ERROR,
				(FUNC10(ERRCODE_UNDEFINED_OBJECT),
				 FUNC11("large object %u does not exist", lobj_oid)));

	ownerId = ((Form_pg_largeobject_metadata) FUNC2(tuple))->lomowner;

	aclDatum = FUNC12(tuple, Anum_pg_largeobject_metadata_lomacl,
							FUNC5(pg_lo_meta), &isNull);

	if (isNull)
	{
		/* No ACL, so build default ACL */
		acl = FUNC7(OBJECT_LARGEOBJECT, ownerId);
		aclDatum = (Datum) 0;
	}
	else
	{
		/* detoast ACL if necessary */
		acl = FUNC0(aclDatum);
	}

	result = FUNC8(acl, roleid, ownerId, mask, how);

	/* if we have a detoasted copy, free it */
	if (acl && (Pointer) acl != FUNC1(aclDatum))
		FUNC13(acl);

	FUNC16(scan);

	FUNC18(pg_lo_meta, AccessShareLock);

	return result;
}