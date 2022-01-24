#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {int validate_default; int /*<<< orphan*/ * partition_constraint; } ;
struct TYPE_18__ {int nparts; int /*<<< orphan*/ * oids; } ;
struct TYPE_17__ {TYPE_1__* rd_rel; } ;
struct TYPE_16__ {scalar_t__ relkind; } ;
typedef  TYPE_2__* Relation ;
typedef  TYPE_3__* PartitionDesc ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  Expr ;
typedef  TYPE_4__ AlteredTableInfo ;

/* Variables and functions */
 TYPE_4__* FUNC0 (int /*<<< orphan*/ **,TYPE_2__*) ; 
 int /*<<< orphan*/  AccessExclusiveLock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DEBUG1 ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  NoLock ; 
 scalar_t__ FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ RELKIND_PARTITIONED_TABLE ; 
 scalar_t__ RELKIND_RELATION ; 
 TYPE_3__* FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int,TYPE_2__*,TYPE_2__*,int*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12(List **wqueue, Relation scanrel,
								   List *partConstraint,
								   bool validate_default)
{
	/*
	 * Based on the table's existing constraints, determine whether or not we
	 * may skip scanning the table.
	 */
	if (FUNC2(scanrel, partConstraint))
	{
		if (!validate_default)
			FUNC6(DEBUG1,
					(FUNC7("partition constraint for table \"%s\" is implied by existing constraints",
							FUNC4(scanrel))));
		else
			FUNC6(DEBUG1,
					(FUNC7("updated partition constraint for default partition \"%s\" is implied by existing constraints",
							FUNC4(scanrel))));
		return;
	}

	/*
	 * Constraints proved insufficient. For plain relations, queue a
	 * validation item now; for partitioned tables, recurse to process each
	 * partition.
	 */
	if (scanrel->rd_rel->relkind == RELKIND_RELATION)
	{
		AlteredTableInfo *tab;

		/* Grab a work queue entry. */
		tab = FUNC0(wqueue, scanrel);
		FUNC1(tab->partition_constraint == NULL);
		tab->partition_constraint = (Expr *) FUNC8(partConstraint);
		tab->validate_default = validate_default;
	}
	else if (scanrel->rd_rel->relkind == RELKIND_PARTITIONED_TABLE)
	{
		PartitionDesc partdesc = FUNC3(scanrel);
		int			i;

		for (i = 0; i < partdesc->nparts; i++)
		{
			Relation	part_rel;
			bool		found_whole_row;
			List	   *thisPartConstraint;

			/*
			 * This is the minimum lock we need to prevent deadlocks.
			 */
			part_rel = FUNC11(partdesc->oids[i], AccessExclusiveLock);

			/*
			 * Adjust the constraint for scanrel so that it matches this
			 * partition's attribute numbers.
			 */
			thisPartConstraint =
				FUNC9(partConstraint, 1,
										part_rel, scanrel, &found_whole_row);
			/* There can never be a whole-row reference here */
			if (found_whole_row)
				FUNC5(ERROR, "unexpected whole-row reference found in partition constraint");

			FUNC12(wqueue, part_rel,
											   thisPartConstraint,
											   validate_default);
			FUNC10(part_rel, NoLock);	/* keep lock till commit */
		}
	}
}