#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  XLogRecPtr ;
typedef  int /*<<< orphan*/  TransactionId ;
struct TYPE_5__ {scalar_t__ state; int /*<<< orphan*/ * snapshot; int /*<<< orphan*/  reorder; } ;
typedef  TYPE_1__ SnapBuild ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ SNAPBUILD_CONSISTENT ; 
 scalar_t__ SNAPBUILD_FULL_SNAPSHOT ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool
FUNC6(SnapBuild *builder, TransactionId xid, XLogRecPtr lsn)
{
	/*
	 * We can't handle data in transactions if we haven't built a snapshot
	 * yet, so don't store them.
	 */
	if (builder->state < SNAPBUILD_FULL_SNAPSHOT)
		return false;

	/*
	 * No point in keeping track of changes in transactions that we don't have
	 * enough information about to decode. This means that they started before
	 * we got into the SNAPBUILD_FULL_SNAPSHOT state.
	 */
	if (builder->state < SNAPBUILD_CONSISTENT &&
		FUNC5(xid, FUNC3(builder)))
		return false;

	/*
	 * If the reorderbuffer doesn't yet have a snapshot, add one now, it will
	 * be needed to decode the change we're currently processing.
	 */
	if (!FUNC1(builder->reorder, xid))
	{
		/* only build a new snapshot if we don't have a prebuilt one */
		if (builder->snapshot == NULL)
		{
			builder->snapshot = FUNC2(builder);
			/* increase refcount for the snapshot builder */
			FUNC4(builder->snapshot);
		}

		/*
		 * Increase refcount for the transaction we're handing the snapshot
		 * out to.
		 */
		FUNC4(builder->snapshot);
		FUNC0(builder->reorder, xid, lsn,
									 builder->snapshot);
	}

	return true;
}