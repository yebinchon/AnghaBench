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
struct varlena {int dummy; } ;
struct varatt_external {int /*<<< orphan*/  va_valueid; int /*<<< orphan*/  va_toastrelid; } ;
struct TYPE_3__ {int /*<<< orphan*/  t_self; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  SnapshotData ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  TYPE_1__* HeapTuple ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  AttrNumber ;

/* Variables and functions */
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 int /*<<< orphan*/  ForwardScanDirection ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct varatt_external,struct varlena*) ; 
 int /*<<< orphan*/  FUNC4 (struct varlena*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int*) ; 

void
FUNC15(Relation rel, Datum value, bool is_speculative)
{
	struct varlena *attr = (struct varlena *) FUNC0(value);
	struct varatt_external toast_pointer;
	Relation	toastrel;
	Relation   *toastidxs;
	ScanKeyData toastkey;
	SysScanDesc toastscan;
	HeapTuple	toasttup;
	int			num_indexes;
	int			validIndex;
	SnapshotData SnapshotToast;

	if (!FUNC4(attr))
		return;

	/* Must copy to access aligned fields */
	FUNC3(toast_pointer, attr);

	/*
	 * Open the toast relation and its indexes
	 */
	toastrel = FUNC12(toast_pointer.va_toastrelid, RowExclusiveLock);

	/* Fetch valid relation used for process */
	validIndex = FUNC14(toastrel,
									RowExclusiveLock,
									&toastidxs,
									&num_indexes);

	/*
	 * Setup a scan key to find chunks with matching va_valueid
	 */
	FUNC2(&toastkey,
				(AttrNumber) 1,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC1(toast_pointer.va_valueid));

	/*
	 * Find all the chunks.  (We don't actually care whether we see them in
	 * sequence or not, but since we've already locked the index we might as
	 * well use systable_beginscan_ordered.)
	 */
	FUNC6(&SnapshotToast);
	toastscan = FUNC8(toastrel, toastidxs[validIndex],
										   &SnapshotToast, 1, &toastkey);
	while ((toasttup = FUNC10(toastscan, ForwardScanDirection)) != NULL)
	{
		/*
		 * Have a chunk, delete it
		 */
		if (is_speculative)
			FUNC5(toastrel, &toasttup->t_self);
		else
			FUNC7(toastrel, &toasttup->t_self);
	}

	/*
	 * End scan and close relations
	 */
	FUNC9(toastscan);
	FUNC13(toastidxs, num_indexes, RowExclusiveLock);
	FUNC11(toastrel, RowExclusiveLock);
}