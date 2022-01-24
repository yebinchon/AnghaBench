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
typedef  int /*<<< orphan*/  TransactionId ;
struct TYPE_4__ {scalar_t__ state; int /*<<< orphan*/ * snapshot; } ;
typedef  int /*<<< orphan*/ * Snapshot ;
typedef  TYPE_1__ SnapBuild ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ SNAPBUILD_CONSISTENT ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

Snapshot
FUNC3(SnapBuild *builder, TransactionId xid)
{
	FUNC0(builder->state == SNAPBUILD_CONSISTENT);

	/* only build a new snapshot if we don't have a prebuilt one */
	if (builder->snapshot == NULL)
	{
		builder->snapshot = FUNC1(builder);
		/* increase refcount for the snapshot builder */
		FUNC2(builder->snapshot);
	}

	return builder->snapshot;
}