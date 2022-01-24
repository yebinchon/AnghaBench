#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  attname; int /*<<< orphan*/  attnotnull; } ;
struct TYPE_12__ {int ii_NumIndexKeyAttrs; scalar_t__* ii_IndexAttrNumbers; } ;
struct TYPE_11__ {TYPE_1__* rd_rel; } ;
struct TYPE_10__ {scalar_t__ relispartition; } ;
typedef  TYPE_2__* Relation ;
typedef  int /*<<< orphan*/  IndexStmt ;
typedef  TYPE_3__ IndexInfo ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_4__* Form_pg_attribute ;
typedef  scalar_t__ AttrNumber ;

/* Variables and functions */
 int /*<<< orphan*/  ATTNUM ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERRCODE_INVALID_TABLE_DEFINITION ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 scalar_t__ FUNC13 (TYPE_2__*) ; 

void
FUNC14(Relation heapRel,
						IndexInfo *indexInfo,
						bool is_alter_table,
						IndexStmt *stmt)
{
	int			i;

	/*
	 * If ALTER TABLE or CREATE TABLE .. PARTITION OF, check that there isn't
	 * already a PRIMARY KEY.  In CREATE TABLE for an ordinary relation, we
	 * have faith that the parser rejected multiple pkey clauses; and CREATE
	 * INDEX doesn't have a way to say PRIMARY KEY, so it's no problem either.
	 */
	if ((is_alter_table || heapRel->rd_rel->relispartition) &&
		FUNC13(heapRel))
	{
		FUNC10(ERROR,
				(FUNC11(ERRCODE_INVALID_TABLE_DEFINITION),
				 FUNC12("multiple primary keys for table \"%s\" are not allowed",
						FUNC5(heapRel))));
	}

	/*
	 * Check that all of the attributes in a primary key are marked as not
	 * null.  (We don't really expect to see that; it'd mean the parser messed
	 * up.  But it seems wise to check anyway.)
	 */
	for (i = 0; i < indexInfo->ii_NumIndexKeyAttrs; i++)
	{
		AttrNumber	attnum = indexInfo->ii_IndexAttrNumbers[i];
		HeapTuple	atttuple;
		Form_pg_attribute attform;

		if (attnum == 0)
			FUNC10(ERROR,
					(FUNC11(ERRCODE_FEATURE_NOT_SUPPORTED),
					 FUNC12("primary keys cannot be expressions")));

		/* System attributes are never null, so no need to check */
		if (attnum < 0)
			continue;

		atttuple = FUNC8(ATTNUM,
								   FUNC4(FUNC6(heapRel)),
								   FUNC2(attnum));
		if (!FUNC1(atttuple))
			FUNC9(ERROR, "cache lookup failed for attribute %d of relation %u",
				 attnum, FUNC6(heapRel));
		attform = (Form_pg_attribute) FUNC0(atttuple);

		if (!attform->attnotnull)
			FUNC10(ERROR,
					(FUNC11(ERRCODE_INVALID_TABLE_DEFINITION),
					 FUNC12("primary key column \"%s\" is not marked NOT NULL",
							FUNC3(attform->attname))));

		FUNC7(atttuple);
	}
}