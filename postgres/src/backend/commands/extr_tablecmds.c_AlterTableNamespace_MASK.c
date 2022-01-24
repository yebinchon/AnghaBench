#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_8__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int32 ;
struct TYPE_14__ {int /*<<< orphan*/  relname; } ;
struct TYPE_13__ {int /*<<< orphan*/  newschema; TYPE_8__* relation; scalar_t__ missing_ok; } ;
struct TYPE_12__ {TYPE_1__* rd_rel; } ;
struct TYPE_11__ {scalar_t__ relkind; } ;
typedef  TYPE_2__* Relation ;
typedef  int /*<<< orphan*/  RangeVar ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  ObjectAddresses ;
typedef  int /*<<< orphan*/  ObjectAddress ;
typedef  TYPE_3__ AlterObjectSchemaStmt ;

/* Variables and functions */
 int /*<<< orphan*/  AccessExclusiveLock ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DEPENDENCY_AUTO ; 
 int /*<<< orphan*/  DEPENDENCY_INTERNAL ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  InvalidObjectAddress ; 
 int /*<<< orphan*/  NOTICE ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ RELKIND_SEQUENCE ; 
 int /*<<< orphan*/  RVR_MISSING_OK ; 
 int /*<<< orphan*/  RangeVarCallbackForAlterRelation ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  RelationRelationId ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

ObjectAddress
FUNC19(AlterObjectSchemaStmt *stmt, Oid *oldschema)
{
	Relation	rel;
	Oid			relid;
	Oid			oldNspOid;
	Oid			nspOid;
	RangeVar   *newrv;
	ObjectAddresses *objsMoved;
	ObjectAddress myself;

	relid = FUNC5(stmt->relation, AccessExclusiveLock,
									 stmt->missing_ok ? RVR_MISSING_OK : 0,
									 RangeVarCallbackForAlterRelation,
									 (void *) stmt);

	if (!FUNC3(relid))
	{
		FUNC8(NOTICE,
				(FUNC11("relation \"%s\" does not exist, skipping",
						stmt->relation->relname)));
		return InvalidObjectAddress;
	}

	rel = FUNC17(relid, NoLock);

	oldNspOid = FUNC6(rel);

	/* If it's an owned sequence, disallow moving it by itself. */
	if (rel->rd_rel->relkind == RELKIND_SEQUENCE)
	{
		Oid			tableId;
		int32		colId;

		if (FUNC18(relid, DEPENDENCY_AUTO, &tableId, &colId) ||
			FUNC18(relid, DEPENDENCY_INTERNAL, &tableId, &colId))
			FUNC8(ERROR,
					(FUNC9(ERRCODE_FEATURE_NOT_SUPPORTED),
					 FUNC11("cannot move an owned sequence into another schema"),
					 FUNC10("Sequence \"%s\" is linked to table \"%s\".",
							   FUNC7(rel),
							   FUNC13(tableId))));
	}

	/* Get and lock schema OID and check its permissions. */
	newrv = FUNC14(stmt->newschema, FUNC7(rel), -1);
	nspOid = FUNC4(newrv, NoLock, NULL);

	/* common checks on switching namespaces */
	FUNC1(oldNspOid, nspOid);

	objsMoved = FUNC15();
	FUNC0(rel, oldNspOid, nspOid, objsMoved);
	FUNC12(objsMoved);

	FUNC2(myself, RelationRelationId, relid);

	if (oldschema)
		*oldschema = oldNspOid;

	/* close rel, but keep lock until commit */
	FUNC16(rel, NoLock);

	return myself;
}