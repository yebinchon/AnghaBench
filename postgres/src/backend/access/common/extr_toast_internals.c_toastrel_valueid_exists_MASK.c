#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  AttrNumber ;

/* Variables and functions */
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SnapshotAny ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int*) ; 

__attribute__((used)) static bool
FUNC8(Relation toastrel, Oid valueid)
{
	bool		result = false;
	ScanKeyData toastkey;
	SysScanDesc toastscan;
	int			num_indexes;
	int			validIndex;
	Relation   *toastidxs;

	/* Fetch a valid index relation */
	validIndex = FUNC7(toastrel,
									RowExclusiveLock,
									&toastidxs,
									&num_indexes);

	/*
	 * Setup a scan key to find chunks with matching va_valueid
	 */
	FUNC2(&toastkey,
				(AttrNumber) 1,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC0(valueid));

	/*
	 * Is there any such chunk?
	 */
	toastscan = FUNC3(toastrel,
								   FUNC1(toastidxs[validIndex]),
								   true, SnapshotAny, 1, &toastkey);

	if (FUNC5(toastscan) != NULL)
		result = true;

	FUNC4(toastscan);

	/* Clean up */
	FUNC6(toastidxs, num_indexes, RowExclusiveLock);

	return result;
}