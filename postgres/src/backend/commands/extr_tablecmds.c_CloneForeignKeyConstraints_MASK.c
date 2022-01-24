#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_1__* rd_rel; } ;
struct TYPE_9__ {scalar_t__ relkind; } ;
typedef  TYPE_2__* Relation ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,TYPE_2__*,TYPE_2__*) ; 
 scalar_t__ RELKIND_PARTITIONED_TABLE ; 

__attribute__((used)) static void
FUNC3(List **wqueue, Relation parentRel,
						   Relation partitionRel)
{
	/* This only works for declarative partitioning */
	FUNC0(parentRel->rd_rel->relkind == RELKIND_PARTITIONED_TABLE);

	/*
	 * Clone constraints for which the parent is on the referenced side.
	 */
	FUNC1(parentRel, partitionRel);

	/*
	 * Now clone constraints where the parent is on the referencing side.
	 */
	FUNC2(wqueue, parentRel, partitionRel);
}