#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int32 ;
struct TYPE_18__ {scalar_t__ inhparent; scalar_t__ inhseqno; } ;
struct TYPE_17__ {TYPE_1__* rd_rel; } ;
struct TYPE_16__ {scalar_t__ relkind; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  TYPE_2__* Relation ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_3__* Form_pg_inherits ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_pg_inherits_inhrelid ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  ERRCODE_DUPLICATE_TABLE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InheritsRelationId ; 
 int /*<<< orphan*/  InheritsRelidSeqnoIndexId ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ RELKIND_PARTITIONED_TABLE ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__,scalar_t__,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC17(Relation child_rel, Relation parent_rel)
{
	Relation	catalogRelation;
	SysScanDesc scan;
	ScanKeyData key;
	HeapTuple	inheritsTuple;
	int32		inhseqno;

	/* Note: get RowExclusiveLock because we will write pg_inherits below. */
	catalogRelation = FUNC16(InheritsRelationId, RowExclusiveLock);

	/*
	 * Check for duplicates in the list of parents, and determine the highest
	 * inhseqno already present; we'll use the next one for the new parent.
	 * Also, if proposed child is a partition, it cannot already be
	 * inheriting.
	 *
	 * Note: we do not reject the case where the child already inherits from
	 * the parent indirectly; CREATE TABLE doesn't reject comparable cases.
	 */
	FUNC7(&key,
				Anum_pg_inherits_inhrelid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC4(FUNC6(child_rel)));
	scan = FUNC12(catalogRelation, InheritsRelidSeqnoIndexId,
							  true, NULL, 1, &key);

	/* inhseqno sequences start at 1 */
	inhseqno = 0;
	while (FUNC1(inheritsTuple = FUNC14(scan)))
	{
		Form_pg_inherits inh = (Form_pg_inherits) FUNC0(inheritsTuple);

		if (inh->inhparent == FUNC6(parent_rel))
			FUNC9(ERROR,
					(FUNC10(ERRCODE_DUPLICATE_TABLE),
					 FUNC11("relation \"%s\" would be inherited from more than once",
							FUNC5(parent_rel))));

		if (inh->inhseqno > inhseqno)
			inhseqno = inh->inhseqno;
	}
	FUNC13(scan);

	/* Match up the columns and bump attinhcount as needed */
	FUNC2(child_rel, parent_rel);

	/* Match up the constraints and bump coninhcount as needed */
	FUNC3(child_rel, parent_rel);

	/*
	 * OK, it looks valid.  Make the catalog entries that show inheritance.
	 */
	FUNC8(FUNC6(child_rel),
							 FUNC6(parent_rel),
							 inhseqno + 1,
							 catalogRelation,
							 parent_rel->rd_rel->relkind ==
							 RELKIND_PARTITIONED_TABLE);

	/* Now we're done with pg_inherits */
	FUNC15(catalogRelation, RowExclusiveLock);
}