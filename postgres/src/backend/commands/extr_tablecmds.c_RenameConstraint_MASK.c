#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ inh; int /*<<< orphan*/  relname; } ;
struct TYPE_4__ {scalar_t__ renameType; TYPE_3__* relation; int /*<<< orphan*/  newname; int /*<<< orphan*/  subname; scalar_t__ missing_ok; int /*<<< orphan*/  object; } ;
typedef  TYPE_1__ RenameStmt ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  ObjectAddress ;
typedef  int /*<<< orphan*/  HeapTuple ;

/* Variables and functions */
 int /*<<< orphan*/  AccessExclusiveLock ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidObjectAddress ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  List ; 
 int /*<<< orphan*/  NOTICE ; 
 int /*<<< orphan*/  NoLock ; 
 scalar_t__ OBJECT_DOMCONSTRAINT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RVR_MISSING_OK ; 
 int /*<<< orphan*/  RangeVarCallbackForRenameAttribute ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TYPEOID ; 
 int /*<<< orphan*/  TypeRelationId ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

ObjectAddress
FUNC16(RenameStmt *stmt)
{
	Oid			relid = InvalidOid;
	Oid			typid = InvalidOid;

	if (stmt->renameType == OBJECT_DOMCONSTRAINT)
	{
		Relation	rel;
		HeapTuple	tup;

		typid = FUNC15(NULL, FUNC11(FUNC6(List, stmt->object)));
		rel = FUNC14(TypeRelationId, RowExclusiveLock);
		tup = FUNC5(TYPEOID, FUNC1(typid));
		if (!FUNC0(tup))
			FUNC8(ERROR, "cache lookup failed for type %u", typid);
		FUNC7(tup);
		FUNC4(tup);
		FUNC13(rel, NoLock);
	}
	else
	{
		/* lock level taken here should match rename_constraint_internal */
		relid = FUNC3(stmt->relation, AccessExclusiveLock,
										 stmt->missing_ok ? RVR_MISSING_OK : 0,
										 RangeVarCallbackForRenameAttribute,
										 NULL);
		if (!FUNC2(relid))
		{
			FUNC9(NOTICE,
					(FUNC10("relation \"%s\" does not exist, skipping",
							stmt->relation->relname)));
			return InvalidObjectAddress;
		}
	}

	return
		FUNC12(relid, typid,
								   stmt->subname,
								   stmt->newname,
								   (stmt->relation &&
									stmt->relation->inh),	/* recursive? */
								   false,	/* recursing? */
								   0 /* expected inhcount */ );

}