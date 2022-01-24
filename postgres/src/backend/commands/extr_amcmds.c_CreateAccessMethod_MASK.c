#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  values ;
typedef  int /*<<< orphan*/  nulls ;
struct TYPE_9__ {int /*<<< orphan*/  amtype; int /*<<< orphan*/  amname; int /*<<< orphan*/  handler_name; } ;
struct TYPE_8__ {scalar_t__ objectSubId; void* objectId; int /*<<< orphan*/  classId; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  void* Oid ;
typedef  TYPE_1__ ObjectAddress ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  int Datum ;
typedef  TYPE_2__ CreateAmStmt ;

/* Variables and functions */
 int /*<<< orphan*/  AMNAME ; 
 int /*<<< orphan*/  AccessMethodRelationId ; 
 int /*<<< orphan*/  AmOidIndexId ; 
 int Anum_pg_am_amhandler ; 
 int Anum_pg_am_amname ; 
 int Anum_pg_am_amtype ; 
 int Anum_pg_am_oid ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DEPENDENCY_NORMAL ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_DUPLICATE_OBJECT ; 
 int /*<<< orphan*/  ERRCODE_INSUFFICIENT_PRIVILEGE ; 
 int /*<<< orphan*/  ERROR ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 void* FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int Natts_pg_am ; 
 int FUNC6 (void*) ; 
 scalar_t__ FUNC7 (void*) ; 
 int /*<<< orphan*/  ProcedureRelationId ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 void* FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int*,int,int) ; 
 int /*<<< orphan*/  namein ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

ObjectAddress
FUNC22(CreateAmStmt *stmt)
{
	Relation	rel;
	ObjectAddress myself;
	ObjectAddress referenced;
	Oid			amoid;
	Oid			amhandler;
	bool		nulls[Natts_pg_am];
	Datum		values[Natts_pg_am];
	HeapTuple	tup;

	rel = FUNC21(AccessMethodRelationId, RowExclusiveLock);

	/* Must be super user */
	if (!FUNC19())
		FUNC9(ERROR,
				(FUNC10(ERRCODE_INSUFFICIENT_PRIVILEGE),
				 FUNC12("permission denied to create access method \"%s\"",
						stmt->amname),
				 FUNC11("Must be superuser to create an access method.")));

	/* Check if name is used */
	amoid = FUNC5(AMNAME, Anum_pg_am_oid,
							FUNC0(stmt->amname));
	if (FUNC7(amoid))
	{
		FUNC9(ERROR,
				(FUNC10(ERRCODE_DUPLICATE_OBJECT),
				 FUNC12("access method \"%s\" already exists",
						stmt->amname)));
	}

	/*
	 * Get the handler function oid, verifying the AM type while at it.
	 */
	amhandler = FUNC15(stmt->handler_name, stmt->amtype);

	/*
	 * Insert tuple into pg_am.
	 */
	FUNC16(values, 0, sizeof(values));
	FUNC16(nulls, false, sizeof(nulls));

	amoid = FUNC4(rel, AmOidIndexId, Anum_pg_am_oid);
	values[Anum_pg_am_oid - 1] = FUNC6(amoid);
	values[Anum_pg_am_amname - 1] =
		FUNC3(namein, FUNC0(stmt->amname));
	values[Anum_pg_am_amhandler - 1] = FUNC6(amhandler);
	values[Anum_pg_am_amtype - 1] = FUNC2(stmt->amtype);

	tup = FUNC13(FUNC8(rel), values, nulls);

	FUNC1(rel, tup);
	FUNC14(tup);

	myself.classId = AccessMethodRelationId;
	myself.objectId = amoid;
	myself.objectSubId = 0;

	/* Record dependency on handler function */
	referenced.classId = ProcedureRelationId;
	referenced.objectId = amhandler;
	referenced.objectSubId = 0;

	FUNC17(&myself, &referenced, DEPENDENCY_NORMAL);

	FUNC18(&myself, false);

	FUNC20(rel, RowExclusiveLock);

	return myself;
}