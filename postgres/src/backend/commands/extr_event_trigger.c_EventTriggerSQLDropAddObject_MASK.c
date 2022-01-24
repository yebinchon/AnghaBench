#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_8__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  SQLDropList; int /*<<< orphan*/  cxt; } ;
struct TYPE_11__ {scalar_t__ classId; scalar_t__ objectSubId; int /*<<< orphan*/  objectId; } ;
struct TYPE_10__ {int original; int normal; char* schemaname; int istemp; int /*<<< orphan*/  next; TYPE_2__ address; int /*<<< orphan*/  objecttype; int /*<<< orphan*/  addrargs; int /*<<< orphan*/  addrnames; int /*<<< orphan*/  objidentity; int /*<<< orphan*/  objname; } ;
typedef  TYPE_1__ SQLDropObject ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_2__ ObjectAddress ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  scalar_t__ HeapTuple ;
typedef  int /*<<< orphan*/  Datum ;
typedef  scalar_t__ AttrNumber ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ InvalidAttrNumber ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ NamespaceRelationId ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_8__* currentEventTriggerState ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 
 scalar_t__ FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (scalar_t__) ; 
 TYPE_1__* FUNC20 (int) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (scalar_t__,int /*<<< orphan*/ ) ; 

void
FUNC26(const ObjectAddress *object, bool original, bool normal)
{
	SQLDropObject *obj;
	MemoryContext oldcxt;

	if (!currentEventTriggerState)
		return;

	FUNC0(FUNC3(FUNC7(object)));

	/* don't report temp schemas except my own */
	if (object->classId == NamespaceRelationId &&
		(FUNC17(object->objectId) &&
		 !FUNC18(object->objectId)))
		return;

	oldcxt = FUNC4(currentEventTriggerState->cxt);

	obj = FUNC20(sizeof(SQLDropObject));
	obj->address = *object;
	obj->original = original;
	obj->normal = normal;

	/*
	 * Obtain schema names from the object's catalog tuple, if one exists;
	 * this lets us skip objects in temp schemas.  We trust that
	 * ObjectProperty contains all object classes that can be
	 * schema-qualified.
	 */
	if (FUNC19(object->classId))
	{
		Relation	catalog;
		HeapTuple	tuple;

		catalog = FUNC25(obj->address.classId, AccessShareLock);
		tuple = FUNC10(catalog,
										  FUNC14(object->classId),
										  obj->address.objectId);

		if (tuple)
		{
			AttrNumber	attnum;
			Datum		datum;
			bool		isnull;

			attnum = FUNC13(obj->address.classId);
			if (attnum != InvalidAttrNumber)
			{
				datum = FUNC16(tuple, attnum,
									 FUNC6(catalog), &isnull);
				if (!isnull)
				{
					Oid			namespaceId;

					namespaceId = FUNC2(datum);
					/* temp objects are only reported if they are my own */
					if (FUNC18(namespaceId))
					{
						obj->schemaname = "pg_temp";
						obj->istemp = true;
					}
					else if (FUNC17(namespaceId))
					{
						FUNC21(obj);
						FUNC24(catalog, AccessShareLock);
						FUNC4(oldcxt);
						return;
					}
					else
					{
						obj->schemaname = FUNC11(namespaceId);
						obj->istemp = false;
					}
				}
			}

			if (FUNC15(obj->address.classId) &&
				obj->address.objectSubId == 0)
			{
				attnum = FUNC12(obj->address.classId);
				if (attnum != InvalidAttrNumber)
				{
					datum = FUNC16(tuple, attnum,
										 FUNC6(catalog), &isnull);
					if (!isnull)
						obj->objname = FUNC22(FUNC5(*FUNC1(datum)));
				}
			}
		}

		FUNC24(catalog, AccessShareLock);
	}
	else
	{
		if (object->classId == NamespaceRelationId &&
			FUNC18(object->objectId))
			obj->istemp = true;
	}

	/* object identity, objname and objargs */
	obj->objidentity =
		FUNC8(&obj->address, &obj->addrnames, &obj->addrargs);

	/* object type */
	obj->objecttype = FUNC9(&obj->address);

	FUNC23(&(currentEventTriggerState->SQLDropList), &obj->next);

	FUNC4(oldcxt);
}