#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  xmin; } ;
struct TYPE_4__ {int /*<<< orphan*/  xmin; } ;
typedef  TYPE_1__* Snapshot ;

/* Variables and functions */
 int /*<<< orphan*/ * ActiveSnapshot ; 
 int /*<<< orphan*/  InvalidTransactionId ; 
 TYPE_3__* MyPgXact ; 
 int /*<<< orphan*/  RegisteredSnapshots ; 
 int /*<<< orphan*/  SnapshotData ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ph_node ; 

__attribute__((used)) static void
FUNC4(void)
{
	Snapshot	minSnapshot;

	if (ActiveSnapshot != NULL)
		return;

	if (FUNC3(&RegisteredSnapshots))
	{
		MyPgXact->xmin = InvalidTransactionId;
		return;
	}

	minSnapshot = FUNC1(SnapshotData, ph_node,
										FUNC2(&RegisteredSnapshots));

	if (FUNC0(MyPgXact->xmin, minSnapshot->xmin))
		MyPgXact->xmin = minSnapshot->xmin;
}