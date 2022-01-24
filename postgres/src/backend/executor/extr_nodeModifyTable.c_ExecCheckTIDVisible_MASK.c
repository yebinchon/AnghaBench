#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TupleTableSlot ;
struct TYPE_3__ {int /*<<< orphan*/  ri_RelationDesc; } ;
typedef  TYPE_1__ ResultRelInfo ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  ItemPointer ;
typedef  int /*<<< orphan*/  EState ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  SnapshotAny ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(EState *estate,
					ResultRelInfo *relinfo,
					ItemPointer tid,
					TupleTableSlot *tempSlot)
{
	Relation	rel = relinfo->ri_RelationDesc;

	/* Redundantly check isolation level */
	if (!FUNC2())
		return;

	if (!FUNC4(rel, tid, SnapshotAny, tempSlot))
		FUNC3(ERROR, "failed to fetch conflicting tuple for ON CONFLICT");
	FUNC0(estate, rel, tempSlot);
	FUNC1(tempSlot);
}