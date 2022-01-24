#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  values ;
typedef  int /*<<< orphan*/  nulls ;
struct TYPE_19__ {int /*<<< orphan*/  options; scalar_t__ version; scalar_t__ servertype; int /*<<< orphan*/  servername; int /*<<< orphan*/  fdwname; scalar_t__ if_not_exists; } ;
struct TYPE_18__ {int /*<<< orphan*/  fdwid; int /*<<< orphan*/  fdwvalidator; int /*<<< orphan*/  fdwname; } ;
struct TYPE_17__ {scalar_t__ objectSubId; int /*<<< orphan*/  objectId; int /*<<< orphan*/  classId; } ;
struct TYPE_16__ {int /*<<< orphan*/  rd_att; } ;
typedef  TYPE_1__* Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_2__ ObjectAddress ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_3__ ForeignDataWrapper ;
typedef  int Datum ;
typedef  TYPE_4__ CreateForeignServerStmt ;
typedef  scalar_t__ AclResult ;

/* Variables and functions */
 scalar_t__ ACLCHECK_OK ; 
 int /*<<< orphan*/  ACL_USAGE ; 
 int Anum_pg_foreign_server_oid ; 
 int Anum_pg_foreign_server_srvacl ; 
 int Anum_pg_foreign_server_srvfdw ; 
 int Anum_pg_foreign_server_srvname ; 
 int Anum_pg_foreign_server_srvoptions ; 
 int Anum_pg_foreign_server_srvowner ; 
 int Anum_pg_foreign_server_srvtype ; 
 int Anum_pg_foreign_server_srvversion ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DEPENDENCY_NORMAL ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_DUPLICATE_OBJECT ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  ForeignDataWrapperRelationId ; 
 int /*<<< orphan*/  ForeignServerOidIndexId ; 
 int /*<<< orphan*/  ForeignServerRelationId ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 TYPE_2__ InvalidObjectAddress ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NOTICE ; 
 int Natts_pg_foreign_server ; 
 int /*<<< orphan*/  OBJECT_FDW ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int*,int,int) ; 
 int /*<<< orphan*/  namein ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

ObjectAddress
FUNC27(CreateForeignServerStmt *stmt)
{
	Relation	rel;
	Datum		srvoptions;
	Datum		values[Natts_pg_foreign_server];
	bool		nulls[Natts_pg_foreign_server];
	HeapTuple	tuple;
	Oid			srvId;
	Oid			ownerId;
	AclResult	aclresult;
	ObjectAddress myself;
	ObjectAddress referenced;
	ForeignDataWrapper *fdw;

	rel = FUNC25(ForeignServerRelationId, RowExclusiveLock);

	/* For now the owner cannot be specified on create. Use effective user ID. */
	ownerId = FUNC8();

	/*
	 * Check that there is no other foreign server by this name. Do nothing if
	 * IF NOT EXISTS was enforced.
	 */
	if (FUNC6(stmt->servername, true) != NULL)
	{
		if (stmt->if_not_exists)
		{
			FUNC14(NOTICE,
					(FUNC15(ERRCODE_DUPLICATE_OBJECT),
					 FUNC16("server \"%s\" already exists, skipping",
							stmt->servername)));
			FUNC24(rel, RowExclusiveLock);
			return InvalidObjectAddress;
		}
		else
			FUNC14(ERROR,
					(FUNC15(ERRCODE_DUPLICATE_OBJECT),
					 FUNC16("server \"%s\" already exists",
							stmt->servername)));
	}

	/*
	 * Check that the FDW exists and that we have USAGE on it. Also get the
	 * actual FDW for option validation etc.
	 */
	fdw = FUNC5(stmt->fdwname, false);

	aclresult = FUNC20(fdw->fdwid, ownerId, ACL_USAGE);
	if (aclresult != ACLCHECK_OK)
		FUNC13(aclresult, OBJECT_FDW, fdw->fdwname);

	/*
	 * Insert tuple into pg_foreign_server.
	 */
	FUNC19(values, 0, sizeof(values));
	FUNC19(nulls, false, sizeof(nulls));

	srvId = FUNC7(rel, ForeignServerOidIndexId,
							   Anum_pg_foreign_server_oid);
	values[Anum_pg_foreign_server_oid - 1] = FUNC10(srvId);
	values[Anum_pg_foreign_server_srvname - 1] =
		FUNC4(namein, FUNC0(stmt->servername));
	values[Anum_pg_foreign_server_srvowner - 1] = FUNC10(ownerId);
	values[Anum_pg_foreign_server_srvfdw - 1] = FUNC10(fdw->fdwid);

	/* Add server type if supplied */
	if (stmt->servertype)
		values[Anum_pg_foreign_server_srvtype - 1] =
			FUNC1(stmt->servertype);
	else
		nulls[Anum_pg_foreign_server_srvtype - 1] = true;

	/* Add server version if supplied */
	if (stmt->version)
		values[Anum_pg_foreign_server_srvversion - 1] =
			FUNC1(stmt->version);
	else
		nulls[Anum_pg_foreign_server_srvversion - 1] = true;

	/* Start with a blank acl */
	nulls[Anum_pg_foreign_server_srvacl - 1] = true;

	/* Add server options */
	srvoptions = FUNC26(ForeignServerRelationId,
										 FUNC11(NULL),
										 stmt->options,
										 fdw->fdwvalidator);

	if (FUNC12(FUNC3(srvoptions)))
		values[Anum_pg_foreign_server_srvoptions - 1] = srvoptions;
	else
		nulls[Anum_pg_foreign_server_srvoptions - 1] = true;

	tuple = FUNC17(rel->rd_att, values, nulls);

	FUNC2(rel, tuple);

	FUNC18(tuple);

	/* record dependencies */
	myself.classId = ForeignServerRelationId;
	myself.objectId = srvId;
	myself.objectSubId = 0;

	referenced.classId = ForeignDataWrapperRelationId;
	referenced.objectId = fdw->fdwid;
	referenced.objectSubId = 0;
	FUNC21(&myself, &referenced, DEPENDENCY_NORMAL);

	FUNC23(ForeignServerRelationId, srvId, ownerId);

	/* dependency on extension */
	FUNC22(&myself, false);

	/* Post creation hook for new foreign server */
	FUNC9(ForeignServerRelationId, srvId, 0);

	FUNC24(rel, RowExclusiveLock);

	return myself;
}