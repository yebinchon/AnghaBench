#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_1__* as_snap; int /*<<< orphan*/  as_level; void* as_next; } ;
struct TYPE_10__ {int /*<<< orphan*/  active_count; int /*<<< orphan*/  copied; } ;
typedef  TYPE_1__* Snapshot ;
typedef  TYPE_2__ ActiveSnapshotElt ;

/* Variables and functions */
 void* ActiveSnapshot ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (TYPE_1__*) ; 
 TYPE_1__* CurrentSnapshot ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__* InvalidSnapshot ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * OldestActiveSnapshot ; 
 TYPE_1__* SecondarySnapshot ; 
 int /*<<< orphan*/  TopTransactionContext ; 

void
FUNC4(Snapshot snap)
{
	ActiveSnapshotElt *newactive;

	FUNC0(snap != InvalidSnapshot);

	newactive = FUNC3(TopTransactionContext, sizeof(ActiveSnapshotElt));

	/*
	 * Checking SecondarySnapshot is probably useless here, but it seems
	 * better to be sure.
	 */
	if (snap == CurrentSnapshot || snap == SecondarySnapshot || !snap->copied)
		newactive->as_snap = FUNC1(snap);
	else
		newactive->as_snap = snap;

	newactive->as_next = ActiveSnapshot;
	newactive->as_level = FUNC2();

	newactive->as_snap->active_count++;

	ActiveSnapshot = newactive;
	if (OldestActiveSnapshot == NULL)
		OldestActiveSnapshot = ActiveSnapshot;
}