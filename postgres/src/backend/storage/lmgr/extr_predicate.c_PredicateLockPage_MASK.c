#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  dbNode; } ;
struct TYPE_6__ {int /*<<< orphan*/  rd_id; TYPE_1__ rd_node; } ;
typedef  int /*<<< orphan*/  Snapshot ;
typedef  TYPE_2__* Relation ;
typedef  int /*<<< orphan*/  PREDICATELOCKTARGETTAG ;
typedef  int /*<<< orphan*/  BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 

void
FUNC3(Relation relation, BlockNumber blkno, Snapshot snapshot)
{
	PREDICATELOCKTARGETTAG tag;

	if (!FUNC2(relation, snapshot))
		return;

	FUNC1(tag,
									relation->rd_node.dbNode,
									relation->rd_id,
									blkno);
	FUNC0(&tag);
}