#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int verify_new_notnull; } ;
struct TYPE_11__ {scalar_t__ attnum; int attnotnull; } ;
struct TYPE_10__ {int /*<<< orphan*/  t_self; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  ObjectAddress ;
typedef  int /*<<< orphan*/  LOCKMODE ;
typedef  TYPE_1__* HeapTuple ;
typedef  TYPE_2__* Form_pg_attribute ;
typedef  scalar_t__ AttrNumber ;
typedef  TYPE_3__ AlteredTableInfo ;

/* Variables and functions */
 int /*<<< orphan*/  AttributeRelationId ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_COLUMN ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  InvalidObjectAddress ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RelationRelationId ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ObjectAddress
FUNC14(AlteredTableInfo *tab, Relation rel,
				 const char *colName, LOCKMODE lockmode)
{
	HeapTuple	tuple;
	AttrNumber	attnum;
	Relation	attr_rel;
	ObjectAddress address;

	/*
	 * lookup the attribute
	 */
	attr_rel = FUNC13(AttributeRelationId, RowExclusiveLock);

	tuple = FUNC8(FUNC7(rel), colName);

	if (!FUNC2(tuple))
		FUNC9(ERROR,
				(FUNC10(ERRCODE_UNDEFINED_COLUMN),
				 FUNC11("column \"%s\" of relation \"%s\" does not exist",
						colName, FUNC6(rel))));

	attnum = ((Form_pg_attribute) FUNC1(tuple))->attnum;

	/* Prevent them from altering a system attribute */
	if (attnum <= 0)
		FUNC9(ERROR,
				(FUNC10(ERRCODE_FEATURE_NOT_SUPPORTED),
				 FUNC11("cannot alter system column \"%s\"",
						colName)));

	/*
	 * Okay, actually perform the catalog change ... if needed
	 */
	if (!((Form_pg_attribute) FUNC1(tuple))->attnotnull)
	{
		((Form_pg_attribute) FUNC1(tuple))->attnotnull = true;

		FUNC0(attr_rel, &tuple->t_self, tuple);

		/*
		 * Ordinarily phase 3 must ensure that no NULLs exist in columns that
		 * are set NOT NULL; however, if we can find a constraint which proves
		 * this then we can skip that.  We needn't bother looking if we've
		 * already found that we must verify some other NOT NULL constraint.
		 */
		if (!tab->verify_new_notnull &&
			!FUNC4(rel, (Form_pg_attribute) FUNC1(tuple)))
		{
			/* Tell Phase 3 it needs to test the constraint */
			tab->verify_new_notnull = true;
		}

		FUNC5(address, RelationRelationId,
							FUNC7(rel), attnum);
	}
	else
		address = InvalidObjectAddress;

	FUNC3(RelationRelationId,
							  FUNC7(rel), attnum);

	FUNC12(attr_rel, RowExclusiveLock);

	return address;
}