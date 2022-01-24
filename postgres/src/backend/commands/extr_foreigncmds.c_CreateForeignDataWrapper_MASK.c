#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  values ;
typedef  int /*<<< orphan*/  nulls ;
struct TYPE_15__ {int /*<<< orphan*/  options; int /*<<< orphan*/  func_options; int /*<<< orphan*/  fdwname; } ;
struct TYPE_14__ {scalar_t__ objectSubId; void* objectId; void* classId; } ;
struct TYPE_13__ {int /*<<< orphan*/  rd_att; } ;
typedef  TYPE_1__* Relation ;
typedef  void* Oid ;
typedef  TYPE_2__ ObjectAddress ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  int Datum ;
typedef  TYPE_3__ CreateFdwStmt ;

/* Variables and functions */
 int Anum_pg_foreign_data_wrapper_fdwacl ; 
 int Anum_pg_foreign_data_wrapper_fdwhandler ; 
 int Anum_pg_foreign_data_wrapper_fdwname ; 
 int Anum_pg_foreign_data_wrapper_fdwoptions ; 
 int Anum_pg_foreign_data_wrapper_fdwowner ; 
 int Anum_pg_foreign_data_wrapper_fdwvalidator ; 
 int Anum_pg_foreign_data_wrapper_oid ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DEPENDENCY_NORMAL ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_DUPLICATE_OBJECT ; 
 int /*<<< orphan*/  ERRCODE_INSUFFICIENT_PRIVILEGE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  ForeignDataWrapperOidIndexId ; 
 void* ForeignDataWrapperRelationId ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int) ; 
 void* FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 void* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (void*,void*,int /*<<< orphan*/ ) ; 
 int Natts_pg_foreign_data_wrapper ; 
 int FUNC8 (void*) ; 
 scalar_t__ FUNC9 (void*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 void* ProcedureRelationId ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int*,int,int) ; 
 int /*<<< orphan*/  namein ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int*,void**,int*,void**) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC22 (void*,void*,void*) ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC25 (void*,int /*<<< orphan*/ ) ; 
 int FUNC26 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 

ObjectAddress
FUNC27(CreateFdwStmt *stmt)
{
	Relation	rel;
	Datum		values[Natts_pg_foreign_data_wrapper];
	bool		nulls[Natts_pg_foreign_data_wrapper];
	HeapTuple	tuple;
	Oid			fdwId;
	bool		handler_given;
	bool		validator_given;
	Oid			fdwhandler;
	Oid			fdwvalidator;
	Datum		fdwoptions;
	Oid			ownerId;
	ObjectAddress myself;
	ObjectAddress referenced;

	rel = FUNC25(ForeignDataWrapperRelationId, RowExclusiveLock);

	/* Must be super user */
	if (!FUNC23())
		FUNC12(ERROR,
				(FUNC13(ERRCODE_INSUFFICIENT_PRIVILEGE),
				 FUNC15("permission denied to create foreign-data wrapper \"%s\"",
						stmt->fdwname),
				 FUNC14("Must be superuser to create a foreign-data wrapper.")));

	/* For now the owner cannot be specified on create. Use effective user ID. */
	ownerId = FUNC6();

	/*
	 * Check that there is no other foreign-data wrapper by this name.
	 */
	if (FUNC4(stmt->fdwname, true) != NULL)
		FUNC12(ERROR,
				(FUNC13(ERRCODE_DUPLICATE_OBJECT),
				 FUNC15("foreign-data wrapper \"%s\" already exists",
						stmt->fdwname)));

	/*
	 * Insert tuple into pg_foreign_data_wrapper.
	 */
	FUNC18(values, 0, sizeof(values));
	FUNC18(nulls, false, sizeof(nulls));

	fdwId = FUNC5(rel, ForeignDataWrapperOidIndexId,
							   Anum_pg_foreign_data_wrapper_oid);
	values[Anum_pg_foreign_data_wrapper_oid - 1] = FUNC8(fdwId);
	values[Anum_pg_foreign_data_wrapper_fdwname - 1] =
		FUNC3(namein, FUNC0(stmt->fdwname));
	values[Anum_pg_foreign_data_wrapper_fdwowner - 1] = FUNC8(ownerId);

	/* Lookup handler and validator functions, if given */
	FUNC19(stmt->func_options,
					   &handler_given, &fdwhandler,
					   &validator_given, &fdwvalidator);

	values[Anum_pg_foreign_data_wrapper_fdwhandler - 1] = FUNC8(fdwhandler);
	values[Anum_pg_foreign_data_wrapper_fdwvalidator - 1] = FUNC8(fdwvalidator);

	nulls[Anum_pg_foreign_data_wrapper_fdwacl - 1] = true;

	fdwoptions = FUNC26(ForeignDataWrapperRelationId,
										 FUNC10(NULL),
										 stmt->options,
										 fdwvalidator);

	if (FUNC11(FUNC2(fdwoptions)))
		values[Anum_pg_foreign_data_wrapper_fdwoptions - 1] = fdwoptions;
	else
		nulls[Anum_pg_foreign_data_wrapper_fdwoptions - 1] = true;

	tuple = FUNC16(rel->rd_att, values, nulls);

	FUNC1(rel, tuple);

	FUNC17(tuple);

	/* record dependencies */
	myself.classId = ForeignDataWrapperRelationId;
	myself.objectId = fdwId;
	myself.objectSubId = 0;

	if (FUNC9(fdwhandler))
	{
		referenced.classId = ProcedureRelationId;
		referenced.objectId = fdwhandler;
		referenced.objectSubId = 0;
		FUNC20(&myself, &referenced, DEPENDENCY_NORMAL);
	}

	if (FUNC9(fdwvalidator))
	{
		referenced.classId = ProcedureRelationId;
		referenced.objectId = fdwvalidator;
		referenced.objectSubId = 0;
		FUNC20(&myself, &referenced, DEPENDENCY_NORMAL);
	}

	FUNC22(ForeignDataWrapperRelationId, fdwId, ownerId);

	/* dependency on extension */
	FUNC21(&myself, false);

	/* Post creation hook for new foreign data wrapper */
	FUNC7(ForeignDataWrapperRelationId, fdwId, 0);

	FUNC24(rel, RowExclusiveLock);

	return myself;
}