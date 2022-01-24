#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ action; int /*<<< orphan*/  extname; int /*<<< orphan*/  object; int /*<<< orphan*/  objtype; } ;
struct TYPE_11__ {scalar_t__ classId; scalar_t__ objectId; scalar_t__ objectSubId; } ;
typedef  int /*<<< orphan*/ * Relation ;
typedef  scalar_t__ Oid ;
typedef  TYPE_1__ ObjectAddress ;
typedef  TYPE_2__ AlterExtensionContentsStmt ;

/* Variables and functions */
 int /*<<< orphan*/  ACLCHECK_NOT_OWNER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DEPENDENCY_EXTENSION ; 
 int /*<<< orphan*/  ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ ExtensionRelationId ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ NamespaceRelationId ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/  OBJECT_EXTENSION ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ RelationRelationId ; 
 int /*<<< orphan*/  ShareUpdateExclusiveLock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC16 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__) ; 
 TYPE_1__ FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (scalar_t__,scalar_t__) ; 

ObjectAddress
FUNC24(AlterExtensionContentsStmt *stmt,
							   ObjectAddress *objAddr)
{
	ObjectAddress extension;
	ObjectAddress object;
	Relation	relation;
	Oid			oldExtension;

	extension.classId = ExtensionRelationId;
	extension.objectId = FUNC15(stmt->extname, false);
	extension.objectSubId = 0;

	/* Permission check: must own extension */
	if (!FUNC19(extension.objectId, FUNC1()))
		FUNC4(ACLCHECK_NOT_OWNER, OBJECT_EXTENSION,
					   stmt->extname);

	/*
	 * Translate the parser representation that identifies the object into an
	 * ObjectAddress.  get_object_address() will throw an error if the object
	 * does not exist, and will also acquire a lock on the object to guard
	 * against concurrent DROP and ALTER EXTENSION ADD/DROP operations.
	 */
	object = FUNC18(stmt->objtype, stmt->object,
								&relation, ShareUpdateExclusiveLock, false);

	FUNC0(object.objectSubId == 0);
	if (objAddr)
		*objAddr = object;

	/* Permission check: must own target object, too */
	FUNC5(FUNC1(), stmt->objtype, object,
						   stmt->object, relation);

	/*
	 * Check existing extension membership.
	 */
	oldExtension = FUNC12(object.classId, object.objectId);

	if (stmt->action > 0)
	{
		/*
		 * ADD, so complain if object is already attached to some extension.
		 */
		if (FUNC3(oldExtension))
			FUNC8(ERROR,
					(FUNC9(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
					 FUNC10("%s is already a member of extension \"%s\"",
							FUNC13(&object),
							FUNC14(oldExtension))));

		/*
		 * Prevent a schema from being added to an extension if the schema
		 * contains the extension.  That would create a dependency loop.
		 */
		if (object.classId == NamespaceRelationId &&
			object.objectId == FUNC16(extension.objectId))
			FUNC8(ERROR,
					(FUNC9(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
					 FUNC10("cannot add schema \"%s\" to extension \"%s\" "
							"because the schema contains the extension",
							FUNC17(object.objectId),
							stmt->extname)));

		/*
		 * OK, add the dependency.
		 */
		FUNC20(&object, &extension, DEPENDENCY_EXTENSION);

		/*
		 * Also record the initial ACL on the object, if any.
		 *
		 * Note that this will handle the object's ACLs, as well as any ACLs
		 * on object subIds.  (In other words, when the object is a table,
		 * this will record the table's ACL and the ACLs for the columns on
		 * the table, if any).
		 */
		FUNC21(object.objectId, object.classId);
	}
	else
	{
		/*
		 * DROP, so complain if it's not a member.
		 */
		if (oldExtension != extension.objectId)
			FUNC8(ERROR,
					(FUNC9(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
					 FUNC10("%s is not a member of extension \"%s\"",
							FUNC13(&object),
							stmt->extname)));

		/*
		 * OK, drop the dependency.
		 */
		if (FUNC6(object.classId, object.objectId,
											ExtensionRelationId,
											DEPENDENCY_EXTENSION) != 1)
			FUNC7(ERROR, "unexpected number of extension dependency records");

		/*
		 * If it's a relation, it might have an entry in the extension's
		 * extconfig array, which we must remove.
		 */
		if (object.classId == RelationRelationId)
			FUNC11(extension.objectId, object.objectId);

		/*
		 * Remove all the initial ACLs, if any.
		 *
		 * Note that this will remove the object's ACLs, as well as any ACLs
		 * on object subIds.  (In other words, when the object is a table,
		 * this will remove the table's ACL and the ACLs for the columns on
		 * the table, if any).
		 */
		FUNC23(object.objectId, object.classId);
	}

	FUNC2(ExtensionRelationId, extension.objectId, 0);

	/*
	 * If get_object_address() opened the relation for us, we close it to keep
	 * the reference count correct - but we retain any locks acquired by
	 * get_object_address() until commit time, to guard against concurrent
	 * activity.
	 */
	if (relation != NULL)
		FUNC22(relation, NoLock);

	return extension;
}