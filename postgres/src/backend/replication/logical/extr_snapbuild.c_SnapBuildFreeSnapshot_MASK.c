#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ snapshot_type; scalar_t__ curcid; scalar_t__ regd_count; scalar_t__ active_count; scalar_t__ copied; int /*<<< orphan*/  takenDuringRecovery; int /*<<< orphan*/  suboverflowed; } ;
typedef  TYPE_1__* Snapshot ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FirstCommandId ; 
 scalar_t__ SNAPSHOT_HISTORIC_MVCC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC3(Snapshot snap)
{
	/* make sure we don't get passed an external snapshot */
	FUNC0(snap->snapshot_type == SNAPSHOT_HISTORIC_MVCC);

	/* make sure nobody modified our snapshot */
	FUNC0(snap->curcid == FirstCommandId);
	FUNC0(!snap->suboverflowed);
	FUNC0(!snap->takenDuringRecovery);
	FUNC0(snap->regd_count == 0);

	/* slightly more likely, so it's checked even without c-asserts */
	if (snap->copied)
		FUNC1(ERROR, "cannot free a copied snapshot");

	if (snap->active_count)
		FUNC1(ERROR, "cannot free an active snapshot");

	FUNC2(snap);
}