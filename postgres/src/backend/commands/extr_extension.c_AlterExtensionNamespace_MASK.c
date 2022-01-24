#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {scalar_t__ deptype; scalar_t__ objsubid; int /*<<< orphan*/  objid; int /*<<< orphan*/  classid; } ;
struct TYPE_17__ {scalar_t__ extnamespace; int /*<<< orphan*/  extname; int /*<<< orphan*/  extrelocatable; } ;
struct TYPE_16__ {int /*<<< orphan*/  t_self; } ;
struct TYPE_15__ {scalar_t__ objectSubId; int /*<<< orphan*/  objectId; int /*<<< orphan*/  classId; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  ObjectAddresses ;
typedef  TYPE_1__ ObjectAddress ;
typedef  TYPE_2__* HeapTuple ;
typedef  TYPE_3__* Form_pg_extension ;
typedef  TYPE_4__* Form_pg_depend ;
typedef  scalar_t__ AclResult ;

/* Variables and functions */
 scalar_t__ ACLCHECK_NOT_OWNER ; 
 scalar_t__ ACLCHECK_OK ; 
 int /*<<< orphan*/  ACL_CREATE ; 
 int /*<<< orphan*/  AccessShareLock ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  Anum_pg_depend_refclassid ; 
 int /*<<< orphan*/  Anum_pg_depend_refobjid ; 
 int /*<<< orphan*/  Anum_pg_extension_oid ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 
 scalar_t__ DEPENDENCY_EXTENSION ; 
 int /*<<< orphan*/  DependReferenceIndexId ; 
 scalar_t__ DependRelationId ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  ExtensionOidIndexId ; 
 scalar_t__ ExtensionRelationId ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 TYPE_1__ InvalidObjectAddress ; 
 scalar_t__ InvalidOid ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NamespaceRelationId ; 
 int /*<<< orphan*/  OBJECT_EXTENSION ; 
 int /*<<< orphan*/  OBJECT_SCHEMA ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*,char const*,...) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*) ; 
 scalar_t__ FUNC20 (char const*,int) ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__) ; 
 TYPE_2__* FUNC22 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC25 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC29 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (scalar_t__,int /*<<< orphan*/ ) ; 

ObjectAddress
FUNC32(const char *extensionName, const char *newschema, Oid *oldschema)
{
	Oid			extensionOid;
	Oid			nspOid;
	Oid			oldNspOid = InvalidOid;
	AclResult	aclresult;
	Relation	extRel;
	ScanKeyData key[2];
	SysScanDesc extScan;
	HeapTuple	extTup;
	Form_pg_extension extForm;
	Relation	depRel;
	SysScanDesc depScan;
	HeapTuple	depTup;
	ObjectAddresses *objsMoved;
	ObjectAddress extAddr;

	extensionOid = FUNC20(extensionName, false);

	nspOid = FUNC6(newschema);

	/*
	 * Permission check: must own extension.  Note that we don't bother to
	 * check ownership of the individual member objects ...
	 */
	if (!FUNC24(extensionOid, FUNC3()))
		FUNC11(ACLCHECK_NOT_OWNER, OBJECT_EXTENSION,
					   extensionName);

	/* Permission check: must have creation rights in target namespace */
	aclresult = FUNC25(nspOid, FUNC3(), ACL_CREATE);
	if (aclresult != ACLCHECK_OK)
		FUNC11(aclresult, OBJECT_SCHEMA, newschema);

	/*
	 * If the schema is currently a member of the extension, disallow moving
	 * the extension into the schema.  That would create a dependency loop.
	 */
	if (FUNC18(NamespaceRelationId, nspOid) == extensionOid)
		FUNC14(ERROR,
				(FUNC15(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
				 FUNC17("cannot move extension \"%s\" into schema \"%s\" "
						"because the extension contains the schema",
						extensionName, newschema)));

	/* Locate the pg_extension tuple */
	extRel = FUNC31(ExtensionRelationId, RowExclusiveLock);

	FUNC10(&key[0],
				Anum_pg_extension_oid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC9(extensionOid));

	extScan = FUNC27(extRel, ExtensionOidIndexId, true,
								 NULL, 1, key);

	extTup = FUNC29(extScan);

	if (!FUNC4(extTup))	/* should not happen */
		FUNC13(ERROR, "could not find tuple for extension %u",
			 extensionOid);

	/* Copy tuple so we can modify it below */
	extTup = FUNC22(extTup);
	extForm = (Form_pg_extension) FUNC2(extTup);

	FUNC28(extScan);

	/*
	 * If the extension is already in the target schema, just silently do
	 * nothing.
	 */
	if (extForm->extnamespace == nspOid)
	{
		FUNC30(extRel, RowExclusiveLock);
		return InvalidObjectAddress;
	}

	/* Check extension is supposed to be relocatable */
	if (!extForm->extrelocatable)
		FUNC14(ERROR,
				(FUNC15(ERRCODE_FEATURE_NOT_SUPPORTED),
				 FUNC17("extension \"%s\" does not support SET SCHEMA",
						FUNC7(extForm->extname))));

	objsMoved = FUNC23();

	/*
	 * Scan pg_depend to find objects that depend directly on the extension,
	 * and alter each one's schema.
	 */
	depRel = FUNC31(DependRelationId, AccessShareLock);

	FUNC10(&key[0],
				Anum_pg_depend_refclassid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC9(ExtensionRelationId));
	FUNC10(&key[1],
				Anum_pg_depend_refobjid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC9(extensionOid));

	depScan = FUNC27(depRel, DependReferenceIndexId, true,
								 NULL, 2, key);

	while (FUNC4(depTup = FUNC29(depScan)))
	{
		Form_pg_depend pg_depend = (Form_pg_depend) FUNC2(depTup);
		ObjectAddress dep;
		Oid			dep_oldNspOid;

		/*
		 * Ignore non-membership dependencies.  (Currently, the only other
		 * case we could see here is a normal dependency from another
		 * extension.)
		 */
		if (pg_depend->deptype != DEPENDENCY_EXTENSION)
			continue;

		dep.classId = pg_depend->classid;
		dep.objectId = pg_depend->objid;
		dep.objectSubId = pg_depend->objsubid;

		if (dep.objectSubId != 0)	/* should not happen */
			FUNC13(ERROR, "extension should not have a sub-object dependency");

		/* Relocate the object */
		dep_oldNspOid = FUNC0(dep.classId,
												 dep.objectId,
												 nspOid,
												 objsMoved);

		/*
		 * Remember previous namespace of first object that has one
		 */
		if (oldNspOid == InvalidOid && dep_oldNspOid != InvalidOid)
			oldNspOid = dep_oldNspOid;

		/*
		 * If not all the objects had the same old namespace (ignoring any
		 * that are not in namespaces), complain.
		 */
		if (dep_oldNspOid != InvalidOid && dep_oldNspOid != oldNspOid)
			FUNC14(ERROR,
					(FUNC15(ERRCODE_FEATURE_NOT_SUPPORTED),
					 FUNC17("extension \"%s\" does not support SET SCHEMA",
							FUNC7(extForm->extname)),
					 FUNC16("%s is not in the extension's schema \"%s\"",
							   FUNC19(&dep),
							   FUNC21(oldNspOid))));
	}

	/* report old schema, if caller wants it */
	if (oldschema)
		*oldschema = oldNspOid;

	FUNC28(depScan);

	FUNC26(depRel, AccessShareLock);

	/* Now adjust pg_extension.extnamespace */
	extForm->extnamespace = nspOid;

	FUNC1(extRel, &extTup->t_self, extTup);

	FUNC30(extRel, RowExclusiveLock);

	/* update dependencies to point to the new schema */
	FUNC12(ExtensionRelationId, extensionOid,
						NamespaceRelationId, oldNspOid, nspOid);

	FUNC5(ExtensionRelationId, extensionOid, 0);

	FUNC8(extAddr, ExtensionRelationId, extensionOid);

	return extAddr;
}