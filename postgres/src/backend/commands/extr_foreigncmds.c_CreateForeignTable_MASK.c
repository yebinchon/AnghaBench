#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  values ;
typedef  int /*<<< orphan*/  nulls ;
struct TYPE_18__ {int /*<<< orphan*/  options; int /*<<< orphan*/  servername; } ;
struct TYPE_17__ {int /*<<< orphan*/  fdwvalidator; } ;
struct TYPE_16__ {int /*<<< orphan*/  serverid; int /*<<< orphan*/  fdwid; int /*<<< orphan*/  servername; } ;
struct TYPE_15__ {scalar_t__ objectSubId; int /*<<< orphan*/  objectId; int /*<<< orphan*/  classId; } ;
struct TYPE_14__ {int /*<<< orphan*/  rd_att; } ;
typedef  TYPE_1__* Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_2__ ObjectAddress ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_3__ ForeignServer ;
typedef  TYPE_4__ ForeignDataWrapper ;
typedef  int Datum ;
typedef  TYPE_5__ CreateForeignTableStmt ;
typedef  scalar_t__ AclResult ;

/* Variables and functions */
 scalar_t__ ACLCHECK_OK ; 
 int /*<<< orphan*/  ACL_USAGE ; 
 int Anum_pg_foreign_table_ftoptions ; 
 int Anum_pg_foreign_table_ftrelid ; 
 int Anum_pg_foreign_table_ftserver ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  DEPENDENCY_NORMAL ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  ForeignServerRelationId ; 
 int /*<<< orphan*/  ForeignTableRelationId ; 
 TYPE_4__* FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int Natts_pg_foreign_table ; 
 int /*<<< orphan*/  OBJECT_FOREIGN_SERVER ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RelationRelationId ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int*,int,int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC18(CreateForeignTableStmt *stmt, Oid relid)
{
	Relation	ftrel;
	Datum		ftoptions;
	Datum		values[Natts_pg_foreign_table];
	bool		nulls[Natts_pg_foreign_table];
	HeapTuple	tuple;
	AclResult	aclresult;
	ObjectAddress myself;
	ObjectAddress referenced;
	Oid			ownerId;
	ForeignDataWrapper *fdw;
	ForeignServer *server;

	/*
	 * Advance command counter to ensure the pg_attribute tuple is visible;
	 * the tuple might be updated to add constraints in previous step.
	 */
	FUNC1();

	ftrel = FUNC16(ForeignTableRelationId, RowExclusiveLock);

	/*
	 * For now the owner cannot be specified on create. Use effective user ID.
	 */
	ownerId = FUNC5();

	/*
	 * Check that the foreign server exists and that we have USAGE on it. Also
	 * get the actual FDW for option validation etc.
	 */
	server = FUNC4(stmt->servername, false);
	aclresult = FUNC13(server->serverid, ownerId, ACL_USAGE);
	if (aclresult != ACLCHECK_OK)
		FUNC9(aclresult, OBJECT_FOREIGN_SERVER, server->servername);

	fdw = FUNC3(server->fdwid);

	/*
	 * Insert tuple into pg_foreign_table.
	 */
	FUNC12(values, 0, sizeof(values));
	FUNC12(nulls, false, sizeof(nulls));

	values[Anum_pg_foreign_table_ftrelid - 1] = FUNC6(relid);
	values[Anum_pg_foreign_table_ftserver - 1] = FUNC6(server->serverid);
	/* Add table generic options */
	ftoptions = FUNC17(ForeignTableRelationId,
										FUNC7(NULL),
										stmt->options,
										fdw->fdwvalidator);

	if (FUNC8(FUNC2(ftoptions)))
		values[Anum_pg_foreign_table_ftoptions - 1] = ftoptions;
	else
		nulls[Anum_pg_foreign_table_ftoptions - 1] = true;

	tuple = FUNC10(ftrel->rd_att, values, nulls);

	FUNC0(ftrel, tuple);

	FUNC11(tuple);

	/* Add pg_class dependency on the server */
	myself.classId = RelationRelationId;
	myself.objectId = relid;
	myself.objectSubId = 0;

	referenced.classId = ForeignServerRelationId;
	referenced.objectId = server->serverid;
	referenced.objectSubId = 0;
	FUNC14(&myself, &referenced, DEPENDENCY_NORMAL);

	FUNC15(ftrel, RowExclusiveLock);
}