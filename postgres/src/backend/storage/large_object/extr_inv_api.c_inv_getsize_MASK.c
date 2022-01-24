#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64 ;
typedef  int /*<<< orphan*/  bytea ;
struct TYPE_7__ {scalar_t__ pageno; } ;
struct TYPE_6__ {int /*<<< orphan*/  snapshot; int /*<<< orphan*/  id; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  TYPE_1__ LargeObjectDesc ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_2__* Form_pg_largeobject ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_pg_largeobject_loid ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  BackwardScanDirection ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int LOBLKSIZE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ **,int*,int*) ; 
 int /*<<< orphan*/  lo_heap_r ; 
 int /*<<< orphan*/  lo_index_r ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint64
FUNC14(LargeObjectDesc *obj_desc)
{
	uint64		lastbyte = 0;
	ScanKeyData skey[1];
	SysScanDesc sd;
	HeapTuple	tuple;

	FUNC0(FUNC5(obj_desc));

	FUNC9();

	FUNC6(&skey[0],
				Anum_pg_largeobject_loid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC4(obj_desc->id));

	sd = FUNC11(lo_heap_r, lo_index_r,
									obj_desc->snapshot, 1, skey);

	/*
	 * Because the pg_largeobject index is on both loid and pageno, but we
	 * constrain only loid, a backwards scan should visit all pages of the
	 * large object in reverse pageno order.  So, it's sufficient to examine
	 * the first valid tuple (== last valid page).
	 */
	tuple = FUNC13(sd, BackwardScanDirection);
	if (FUNC3(tuple))
	{
		Form_pg_largeobject data;
		bytea	   *datafield;
		int			len;
		bool		pfreeit;

		if (FUNC2(tuple))	/* paranoia */
			FUNC7(ERROR, "null field found in pg_largeobject");
		data = (Form_pg_largeobject) FUNC1(tuple);
		FUNC8(data, &datafield, &len, &pfreeit);
		lastbyte = (uint64) data->pageno * LOBLKSIZE + len;
		if (pfreeit)
			FUNC10(datafield);
	}

	FUNC12(sd);

	return lastbyte;
}