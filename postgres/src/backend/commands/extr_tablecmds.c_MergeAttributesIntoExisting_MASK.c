#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* TupleDesc ;
struct TYPE_26__ {scalar_t__ atttypid; scalar_t__ atttypmod; scalar_t__ attcollation; int attinhcount; int attislocal; scalar_t__ attnotnull; scalar_t__ attisdropped; int /*<<< orphan*/  attname; } ;
struct TYPE_25__ {int /*<<< orphan*/  t_self; } ;
struct TYPE_24__ {TYPE_1__* rd_rel; } ;
struct TYPE_23__ {int natts; } ;
struct TYPE_22__ {scalar_t__ relkind; } ;
typedef  TYPE_3__* Relation ;
typedef  TYPE_4__* HeapTuple ;
typedef  TYPE_5__* Form_pg_attribute ;
typedef  int AttrNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  AttributeRelationId ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  ERRCODE_COLLATION_MISMATCH ; 
 int /*<<< orphan*/  ERRCODE_DATATYPE_MISMATCH ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 scalar_t__ FUNC3 (TYPE_4__*) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ RELKIND_PARTITIONED_TABLE ; 
 TYPE_2__* FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 TYPE_4__* FUNC8 (int /*<<< orphan*/ ,char*) ; 
 TYPE_5__* FUNC9 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC16(Relation child_rel, Relation parent_rel)
{
	Relation	attrrel;
	AttrNumber	parent_attno;
	int			parent_natts;
	TupleDesc	tupleDesc;
	HeapTuple	tuple;
	bool		child_is_partition = false;

	attrrel = FUNC15(AttributeRelationId, RowExclusiveLock);

	tupleDesc = FUNC5(parent_rel);
	parent_natts = tupleDesc->natts;

	/* If parent_rel is a partitioned table, child_rel must be a partition */
	if (parent_rel->rd_rel->relkind == RELKIND_PARTITIONED_TABLE)
		child_is_partition = true;

	for (parent_attno = 1; parent_attno <= parent_natts; parent_attno++)
	{
		Form_pg_attribute attribute = FUNC9(tupleDesc,
													parent_attno - 1);
		char	   *attributeName = FUNC4(attribute->attname);

		/* Ignore dropped columns in the parent. */
		if (attribute->attisdropped)
			continue;

		/* Find same column in child (matching on column name). */
		tuple = FUNC8(FUNC7(child_rel),
										  attributeName);
		if (FUNC3(tuple))
		{
			/* Check they are same type, typmod, and collation */
			Form_pg_attribute childatt = (Form_pg_attribute) FUNC2(tuple);

			if (attribute->atttypid != childatt->atttypid ||
				attribute->atttypmod != childatt->atttypmod)
				FUNC10(ERROR,
						(FUNC11(ERRCODE_DATATYPE_MISMATCH),
						 FUNC12("child table \"%s\" has different type for column \"%s\"",
								FUNC6(child_rel),
								attributeName)));

			if (attribute->attcollation != childatt->attcollation)
				FUNC10(ERROR,
						(FUNC11(ERRCODE_COLLATION_MISMATCH),
						 FUNC12("child table \"%s\" has different collation for column \"%s\"",
								FUNC6(child_rel),
								attributeName)));

			/*
			 * Check child doesn't discard NOT NULL property.  (Other
			 * constraints are checked elsewhere.)
			 */
			if (attribute->attnotnull && !childatt->attnotnull)
				FUNC10(ERROR,
						(FUNC11(ERRCODE_DATATYPE_MISMATCH),
						 FUNC12("column \"%s\" in child table must be marked NOT NULL",
								attributeName)));

			/*
			 * OK, bump the child column's inheritance count.  (If we fail
			 * later on, this change will just roll back.)
			 */
			childatt->attinhcount++;

			/*
			 * In case of partitions, we must enforce that value of attislocal
			 * is same in all partitions. (Note: there are only inherited
			 * attributes in partitions)
			 */
			if (child_is_partition)
			{
				FUNC0(childatt->attinhcount == 1);
				childatt->attislocal = false;
			}

			FUNC1(attrrel, &tuple->t_self, tuple);
			FUNC13(tuple);
		}
		else
		{
			FUNC10(ERROR,
					(FUNC11(ERRCODE_DATATYPE_MISMATCH),
					 FUNC12("child table is missing column \"%s\"",
							attributeName)));
		}
	}

	FUNC14(attrrel, RowExclusiveLock);
}