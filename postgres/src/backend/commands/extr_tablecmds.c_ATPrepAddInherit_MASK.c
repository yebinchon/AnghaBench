#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* rd_rel; } ;
struct TYPE_4__ {scalar_t__ relkind; scalar_t__ relispartition; scalar_t__ reloftype; } ;
typedef  TYPE_2__* Relation ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_WRONG_OBJECT_TYPE ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ RELKIND_PARTITIONED_TABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void
FUNC3(Relation child_rel)
{
	if (child_rel->rd_rel->reloftype)
		FUNC0(ERROR,
				(FUNC1(ERRCODE_WRONG_OBJECT_TYPE),
				 FUNC2("cannot change inheritance of typed table")));

	if (child_rel->rd_rel->relispartition)
		FUNC0(ERROR,
				(FUNC1(ERRCODE_WRONG_OBJECT_TYPE),
				 FUNC2("cannot change inheritance of a partition")));

	if (child_rel->rd_rel->relkind == RELKIND_PARTITIONED_TABLE)
		FUNC0(ERROR,
				(FUNC1(ERRCODE_WRONG_OBJECT_TYPE),
				 FUNC2("cannot change inheritance of partitioned table")));
}