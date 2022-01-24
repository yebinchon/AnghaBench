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
struct TYPE_13__ {scalar_t__ relnamespace; int /*<<< orphan*/  relname; } ;
struct TYPE_12__ {int /*<<< orphan*/  t_self; } ;
struct TYPE_11__ {scalar_t__ objectSubId; scalar_t__ objectId; int /*<<< orphan*/  classId; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  ObjectAddresses ;
typedef  TYPE_1__ ObjectAddress ;
typedef  TYPE_2__* HeapTuple ;
typedef  TYPE_3__* Form_pg_class ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  ERRCODE_DUPLICATE_TABLE ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 scalar_t__ InvalidOid ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NamespaceRelationId ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  RELOID ; 
 int /*<<< orphan*/  RelationRelationId ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 
 scalar_t__ FUNC15 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*) ; 
 int FUNC17 (TYPE_1__*,int /*<<< orphan*/ *) ; 

void
FUNC18(Relation classRel, Oid relOid,
							   Oid oldNspOid, Oid newNspOid,
							   bool hasDependEntry,
							   ObjectAddresses *objsMoved)
{
	HeapTuple	classTup;
	Form_pg_class classForm;
	ObjectAddress thisobj;
	bool		already_done = false;

	classTup = FUNC7(RELOID, FUNC6(relOid));
	if (!FUNC3(classTup))
		FUNC10(ERROR, "cache lookup failed for relation %u", relOid);
	classForm = (Form_pg_class) FUNC2(classTup);

	FUNC0(classForm->relnamespace == oldNspOid);

	thisobj.classId = RelationRelationId;
	thisobj.objectId = relOid;
	thisobj.objectSubId = 0;

	/*
	 * If the object has already been moved, don't move it again.  If it's
	 * already in the right place, don't move it, but still fire the object
	 * access hook.
	 */
	already_done = FUNC17(&thisobj, objsMoved);
	if (!already_done && oldNspOid != newNspOid)
	{
		/* check for duplicate name (more friendly than unique-index failure) */
		if (FUNC15(FUNC5(classForm->relname),
							  newNspOid) != InvalidOid)
			FUNC11(ERROR,
					(FUNC12(ERRCODE_DUPLICATE_TABLE),
					 FUNC13("relation \"%s\" already exists in schema \"%s\"",
							FUNC5(classForm->relname),
							FUNC14(newNspOid))));

		/* classTup is a copy, so OK to scribble on */
		classForm->relnamespace = newNspOid;

		FUNC1(classRel, &classTup->t_self, classTup);

		/* Update dependency on schema if caller said so */
		if (hasDependEntry &&
			FUNC9(RelationRelationId,
								relOid,
								NamespaceRelationId,
								oldNspOid,
								newNspOid) != 1)
			FUNC10(ERROR, "failed to change schema dependency for relation \"%s\"",
				 FUNC5(classForm->relname));
	}
	if (!already_done)
	{
		FUNC8(&thisobj, objsMoved);

		FUNC4(RelationRelationId, relOid, 0);
	}

	FUNC16(classTup);
}