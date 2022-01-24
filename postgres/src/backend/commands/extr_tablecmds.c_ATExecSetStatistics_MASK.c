#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  char const* int16 ;
struct TYPE_24__ {int attnum; int attstattarget; int /*<<< orphan*/  attname; } ;
struct TYPE_23__ {int /*<<< orphan*/  t_self; } ;
struct TYPE_22__ {TYPE_3__* rd_index; TYPE_1__* rd_rel; } ;
struct TYPE_20__ {scalar_t__* values; } ;
struct TYPE_21__ {int indnkeyatts; TYPE_2__ indkey; } ;
struct TYPE_19__ {scalar_t__ relkind; } ;
typedef  TYPE_4__* Relation ;
typedef  int /*<<< orphan*/  ObjectAddress ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  LOCKMODE ;
typedef  TYPE_5__* HeapTuple ;
typedef  TYPE_6__* Form_pg_attribute ;
typedef  int AttrNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AttributeRelationId ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_COLUMN ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  Integer ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char const* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ RELKIND_INDEX ; 
 scalar_t__ RELKIND_PARTITIONED_INDEX ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*) ; 
 int /*<<< orphan*/  RelationRelationId ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 TYPE_5__* FUNC10 (int /*<<< orphan*/ ,char const*) ; 
 TYPE_5__* FUNC11 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (char*,...) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_5__*) ; 
 int FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ObjectAddress
FUNC20(Relation rel, const char *colName, int16 colNum, Node *newValue, LOCKMODE lockmode)
{
	int			newtarget;
	Relation	attrelation;
	HeapTuple	tuple;
	Form_pg_attribute attrtuple;
	AttrNumber	attnum;
	ObjectAddress address;

	FUNC0(FUNC5(newValue, Integer));
	newtarget = FUNC17(newValue);

	/*
	 * Limit target to a sane range
	 */
	if (newtarget < -1)
	{
		FUNC12(ERROR,
				(FUNC13(ERRCODE_INVALID_PARAMETER_VALUE),
				 FUNC15("statistics target %d is too low",
						newtarget)));
	}
	else if (newtarget > 10000)
	{
		newtarget = 10000;
		FUNC12(WARNING,
				(FUNC13(ERRCODE_INVALID_PARAMETER_VALUE),
				 FUNC15("lowering statistics target to %d",
						newtarget)));
	}

	attrelation = FUNC19(AttributeRelationId, RowExclusiveLock);

	if (colName)
	{
		tuple = FUNC10(FUNC9(rel), colName);

		if (!FUNC3(tuple))
			FUNC12(ERROR,
					(FUNC13(ERRCODE_UNDEFINED_COLUMN),
					 FUNC15("column \"%s\" of relation \"%s\" does not exist",
							colName, FUNC8(rel))));
	}
	else
	{
		tuple = FUNC11(FUNC9(rel), colNum);

		if (!FUNC3(tuple))
			FUNC12(ERROR,
					(FUNC13(ERRCODE_UNDEFINED_COLUMN),
					 FUNC15("column number %d of relation \"%s\" does not exist",
							colNum, FUNC8(rel))));
	}

	attrtuple = (Form_pg_attribute) FUNC2(tuple);

	attnum = attrtuple->attnum;
	if (attnum <= 0)
		FUNC12(ERROR,
				(FUNC13(ERRCODE_FEATURE_NOT_SUPPORTED),
				 FUNC15("cannot alter system column \"%s\"",
						colName)));

	if (rel->rd_rel->relkind == RELKIND_INDEX ||
		rel->rd_rel->relkind == RELKIND_PARTITIONED_INDEX)
	{
		if (attnum > rel->rd_index->indnkeyatts)
			FUNC12(ERROR,
					(FUNC13(ERRCODE_FEATURE_NOT_SUPPORTED),
					 FUNC15("cannot alter statistics on included column \"%s\" of index \"%s\"",
							FUNC6(attrtuple->attname), FUNC8(rel))));
		else if (rel->rd_index->indkey.values[attnum - 1] != 0)
			FUNC12(ERROR,
					(FUNC13(ERRCODE_FEATURE_NOT_SUPPORTED),
					 FUNC15("cannot alter statistics on non-expression column \"%s\" of index \"%s\"",
							FUNC6(attrtuple->attname), FUNC8(rel)),
					 FUNC14("Alter statistics on table column instead.")));
	}

	attrtuple->attstattarget = newtarget;

	FUNC1(attrelation, &tuple->t_self, tuple);

	FUNC4(RelationRelationId,
							  FUNC9(rel),
							  attrtuple->attnum);
	FUNC7(address, RelationRelationId,
						FUNC9(rel), attnum);
	FUNC16(tuple);

	FUNC18(attrelation, RowExclusiveLock);

	return address;
}