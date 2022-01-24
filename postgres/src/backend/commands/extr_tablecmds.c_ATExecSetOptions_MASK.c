#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  repl_repl ;
typedef  int /*<<< orphan*/  repl_null ;
struct TYPE_13__ {scalar_t__ attnum; } ;
struct TYPE_12__ {int /*<<< orphan*/  t_self; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  ObjectAddress ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  LOCKMODE ;
typedef  TYPE_1__* HeapTuple ;
typedef  TYPE_2__* Form_pg_attribute ;
typedef  scalar_t__ Datum ;
typedef  scalar_t__ AttrNumber ;

/* Variables and functions */
 int /*<<< orphan*/  ATTNAME ; 
 int Anum_pg_attribute_attoptions ; 
 int /*<<< orphan*/  AttributeRelationId ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_COLUMN ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  List ; 
 int Natts_pg_attribute ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RelationRelationId ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,TYPE_1__*,int,int*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 TYPE_1__* FUNC17 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__*,int*,int*) ; 
 int /*<<< orphan*/  FUNC18 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static ObjectAddress
FUNC22(Relation rel, const char *colName, Node *options,
				 bool isReset, LOCKMODE lockmode)
{
	Relation	attrelation;
	HeapTuple	tuple,
				newtuple;
	Form_pg_attribute attrtuple;
	AttrNumber	attnum;
	Datum		datum,
				newOptions;
	bool		isnull;
	ObjectAddress address;
	Datum		repl_val[Natts_pg_attribute];
	bool		repl_null[Natts_pg_attribute];
	bool		repl_repl[Natts_pg_attribute];

	attrelation = FUNC20(AttributeRelationId, RowExclusiveLock);

	tuple = FUNC9(FUNC7(rel), colName);

	if (!FUNC2(tuple))
		FUNC13(ERROR,
				(FUNC14(ERRCODE_UNDEFINED_COLUMN),
				 FUNC15("column \"%s\" of relation \"%s\" does not exist",
						colName, FUNC6(rel))));
	attrtuple = (Form_pg_attribute) FUNC1(tuple);

	attnum = attrtuple->attnum;
	if (attnum <= 0)
		FUNC13(ERROR,
				(FUNC14(ERRCODE_FEATURE_NOT_SUPPORTED),
				 FUNC15("cannot alter system column \"%s\"",
						colName)));

	/* Generate new proposed attoptions (text array) */
	datum = FUNC10(ATTNAME, tuple, Anum_pg_attribute_attoptions,
							&isnull);
	newOptions = FUNC21(isnull ? (Datum) 0 : datum,
									 FUNC12(List, options), NULL, NULL,
									 false, isReset);
	/* Validate new options */
	(void) FUNC11(newOptions, true);

	/* Build new tuple. */
	FUNC18(repl_null, false, sizeof(repl_null));
	FUNC18(repl_repl, false, sizeof(repl_repl));
	if (newOptions != (Datum) 0)
		repl_val[Anum_pg_attribute_attoptions - 1] = newOptions;
	else
		repl_null[Anum_pg_attribute_attoptions - 1] = true;
	repl_repl[Anum_pg_attribute_attoptions - 1] = true;
	newtuple = FUNC17(tuple, FUNC5(attrelation),
								 repl_val, repl_null, repl_repl);

	/* Update system catalog. */
	FUNC0(attrelation, &newtuple->t_self, newtuple);

	FUNC3(RelationRelationId,
							  FUNC7(rel),
							  attrtuple->attnum);
	FUNC4(address, RelationRelationId,
						FUNC7(rel), attnum);

	FUNC16(newtuple);

	FUNC8(tuple);

	FUNC19(attrelation, RowExclusiveLock);

	return address;
}