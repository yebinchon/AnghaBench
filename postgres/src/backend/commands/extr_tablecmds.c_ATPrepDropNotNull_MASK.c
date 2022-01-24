#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ nparts; } ;
struct TYPE_8__ {TYPE_1__* rd_rel; } ;
struct TYPE_7__ {scalar_t__ relkind; } ;
typedef  TYPE_2__* Relation ;
typedef  TYPE_3__* PartitionDesc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_INVALID_TABLE_DEFINITION ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ RELKIND_PARTITIONED_TABLE ; 
 TYPE_3__* FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void
FUNC6(Relation rel, bool recurse, bool recursing)
{
	/*
	 * If the parent is a partitioned table, like check constraints, we do not
	 * support removing the NOT NULL while partitions exist.
	 */
	if (rel->rd_rel->relkind == RELKIND_PARTITIONED_TABLE)
	{
		PartitionDesc partdesc = FUNC1(rel);

		FUNC0(partdesc != NULL);
		if (partdesc->nparts > 0 && !recurse && !recursing)
			FUNC2(ERROR,
					(FUNC3(ERRCODE_INVALID_TABLE_DEFINITION),
					 FUNC5("cannot remove constraint from only the partitioned table when partitions exist"),
					 FUNC4("Do not specify the ONLY keyword.")));
	}
}