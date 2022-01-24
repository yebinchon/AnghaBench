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
typedef  int /*<<< orphan*/  repl_repl ;
typedef  int /*<<< orphan*/  repl_null ;
typedef  int /*<<< orphan*/  TableScanDesc ;
struct TYPE_15__ {int /*<<< orphan*/  isReset; int /*<<< orphan*/  options; int /*<<< orphan*/  tablespacename; } ;
struct TYPE_14__ {int /*<<< orphan*/  oid; } ;
struct TYPE_13__ {int /*<<< orphan*/  t_self; } ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__* HeapTuple ;
typedef  TYPE_2__* Form_pg_tablespace ;
typedef  scalar_t__ Datum ;
typedef  TYPE_3__ AlterTableSpaceOptionsStmt ;

/* Variables and functions */
 int /*<<< orphan*/  ACLCHECK_NOT_OWNER ; 
 int /*<<< orphan*/  Anum_pg_tablespace_spcname ; 
 int Anum_pg_tablespace_spcoptions ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_OBJECT ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  F_NAMEEQ ; 
 int /*<<< orphan*/  ForwardScanDirection ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int Natts_pg_tablespace ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/  OBJECT_TABLESPACE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TableSpaceRelationId ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 scalar_t__ FUNC13 (TYPE_1__*,int,int /*<<< orphan*/ ,int*) ; 
 TYPE_1__* FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC15 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__*,int*,int*) ; 
 int /*<<< orphan*/  FUNC16 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (scalar_t__,int) ; 
 scalar_t__ FUNC23 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

Oid
FUNC24(AlterTableSpaceOptionsStmt *stmt)
{
	Relation	rel;
	ScanKeyData entry[1];
	TableScanDesc scandesc;
	HeapTuple	tup;
	Oid			tablespaceoid;
	Datum		datum;
	Datum		newOptions;
	Datum		repl_val[Natts_pg_tablespace];
	bool		isnull;
	bool		repl_null[Natts_pg_tablespace];
	bool		repl_repl[Natts_pg_tablespace];
	HeapTuple	newtuple;

	/* Search pg_tablespace */
	rel = FUNC21(TableSpaceRelationId, RowExclusiveLock);

	FUNC7(&entry[0],
				Anum_pg_tablespace_spcname,
				BTEqualStrategyNumber, F_NAMEEQ,
				FUNC0(stmt->tablespacename));
	scandesc = FUNC18(rel, 1, entry);
	tup = FUNC14(scandesc, ForwardScanDirection);
	if (!FUNC4(tup))
		FUNC9(ERROR,
				(FUNC10(ERRCODE_UNDEFINED_OBJECT),
				 FUNC11("tablespace \"%s\" does not exist",
						stmt->tablespacename)));

	tablespaceoid = ((Form_pg_tablespace) FUNC2(tup))->oid;

	/* Must be owner of the existing object */
	if (!FUNC17(tablespaceoid, FUNC3()))
		FUNC8(ACLCHECK_NOT_OWNER, OBJECT_TABLESPACE,
					   stmt->tablespacename);

	/* Generate new proposed spcoptions (text array) */
	datum = FUNC13(tup, Anum_pg_tablespace_spcoptions,
						 FUNC6(rel), &isnull);
	newOptions = FUNC23(isnull ? (Datum) 0 : datum,
									 stmt->options, NULL, NULL, false,
									 stmt->isReset);
	(void) FUNC22(newOptions, true);

	/* Build new tuple. */
	FUNC16(repl_null, false, sizeof(repl_null));
	FUNC16(repl_repl, false, sizeof(repl_repl));
	if (newOptions != (Datum) 0)
		repl_val[Anum_pg_tablespace_spcoptions - 1] = newOptions;
	else
		repl_null[Anum_pg_tablespace_spcoptions - 1] = true;
	repl_repl[Anum_pg_tablespace_spcoptions - 1] = true;
	newtuple = FUNC15(tup, FUNC6(rel), repl_val,
								 repl_null, repl_repl);

	/* Update system catalog. */
	FUNC1(rel, &newtuple->t_self, newtuple);

	FUNC5(TableSpaceRelationId, tablespaceoid, 0);

	FUNC12(newtuple);

	/* Conclude heap scan. */
	FUNC20(scandesc);
	FUNC19(rel, NoLock);

	return tablespaceoid;
}