#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  new_val ;
typedef  int /*<<< orphan*/  new_repl ;
typedef  int /*<<< orphan*/  new_null ;
struct TYPE_16__ {int relispartition; } ;
struct TYPE_15__ {int /*<<< orphan*/  t_self; } ;
struct TYPE_14__ {scalar_t__ is_default; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  TYPE_1__ PartitionBoundSpec ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_2__* HeapTuple ;
typedef  TYPE_3__* Form_pg_class ;
typedef  int Datum ;

/* Variables and functions */
 int Anum_pg_class_relpartbound ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int Natts_pg_class ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RELOID ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RelationRelationId ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 TYPE_2__* FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,TYPE_2__*,int,int*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*) ; 
 TYPE_2__* FUNC18 (TYPE_2__*,int /*<<< orphan*/ ,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC19 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC24(Relation rel, Relation parent, PartitionBoundSpec *bound)
{
	Relation	classRel;
	HeapTuple	tuple,
				newtuple;
	Datum		new_val[Natts_pg_class];
	bool		new_null[Natts_pg_class],
				new_repl[Natts_pg_class];
	Oid			defaultPartOid;

	/* Update pg_class tuple */
	classRel = FUNC22(RelationRelationId, RowExclusiveLock);
	tuple = FUNC13(RELOID,
								FUNC8(FUNC12(rel)));
	if (!FUNC7(tuple))
		FUNC15(ERROR, "cache lookup failed for relation %u",
			 FUNC12(rel));

#ifdef USE_ASSERT_CHECKING
	{
		Form_pg_class classForm;
		bool		isnull;

		classForm = (Form_pg_class) GETSTRUCT(tuple);
		Assert(!classForm->relispartition);
		(void) SysCacheGetAttr(RELOID, tuple, Anum_pg_class_relpartbound,
							   &isnull);
		Assert(isnull);
	}
#endif

	/* Fill in relpartbound value */
	FUNC19(new_val, 0, sizeof(new_val));
	FUNC19(new_null, false, sizeof(new_null));
	FUNC19(new_repl, false, sizeof(new_repl));
	new_val[Anum_pg_class_relpartbound - 1] = FUNC1(FUNC20(bound));
	new_null[Anum_pg_class_relpartbound - 1] = false;
	new_repl[Anum_pg_class_relpartbound - 1] = true;
	newtuple = FUNC18(tuple, FUNC10(classRel),
								 new_val, new_null, new_repl);
	/* Also set the flag */
	((Form_pg_class) FUNC6(newtuple))->relispartition = true;
	FUNC4(classRel, &newtuple->t_self, newtuple);
	FUNC17(newtuple);
	FUNC21(classRel, RowExclusiveLock);

	/*
	 * If we're storing bounds for the default partition, update
	 * pg_partitioned_table too.
	 */
	if (bound->is_default)
		FUNC23(FUNC12(parent),
									 FUNC12(rel));

	/* Make these updates visible */
	FUNC5();

	/*
	 * The partition constraint for the default partition depends on the
	 * partition bounds of every other partition, so we must invalidate the
	 * relcache entry for that partition every time a partition is added or
	 * removed.
	 */
	defaultPartOid = FUNC16(FUNC11(parent));
	if (FUNC9(defaultPartOid))
		FUNC3(defaultPartOid);

	FUNC2(parent);
}