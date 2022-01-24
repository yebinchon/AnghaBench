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
typedef  int int64 ;
typedef  int /*<<< orphan*/  int32 ;
typedef  int /*<<< orphan*/  bytea ;
struct TYPE_7__ {scalar_t__ pageno; } ;
struct TYPE_6__ {int offset; int flags; int /*<<< orphan*/  snapshot; int /*<<< orphan*/  id; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  TYPE_1__ LargeObjectDesc ;
typedef  int /*<<< orphan*/ * HeapTuple ;
typedef  TYPE_2__* Form_pg_largeobject ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_pg_largeobject_loid ; 
 int /*<<< orphan*/  Anum_pg_largeobject_pageno ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  BTGreaterEqualStrategyNumber ; 
 int /*<<< orphan*/  ERRCODE_INSUFFICIENT_PRIVILEGE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  F_INT4GE ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 int /*<<< orphan*/  ForwardScanDirection ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int IFS_RDLOCK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int LOBLKSIZE ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int /*<<< orphan*/ **,int*,int*) ; 
 int /*<<< orphan*/  lo_heap_r ; 
 int /*<<< orphan*/  lo_index_r ; 
 int /*<<< orphan*/  FUNC14 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC20(LargeObjectDesc *obj_desc, char *buf, int nbytes)
{
	int			nread = 0;
	int64		n;
	int64		off;
	int			len;
	int32		pageno = (int32) (obj_desc->offset / LOBLKSIZE);
	uint64		pageoff;
	ScanKeyData skey[2];
	SysScanDesc sd;
	HeapTuple	tuple;

	FUNC0(FUNC6(obj_desc));
	FUNC0(buf != NULL);

	if ((obj_desc->flags & IFS_RDLOCK) == 0)
		FUNC10(ERROR,
				(FUNC11(ERRCODE_INSUFFICIENT_PRIVILEGE),
				 FUNC12("permission denied for large object %u",
						obj_desc->id)));

	if (nbytes <= 0)
		return 0;

	FUNC15();

	FUNC7(&skey[0],
				Anum_pg_largeobject_loid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC5(obj_desc->id));

	FUNC7(&skey[1],
				Anum_pg_largeobject_pageno,
				BTGreaterEqualStrategyNumber, F_INT4GE,
				FUNC3(pageno));

	sd = FUNC17(lo_heap_r, lo_index_r,
									obj_desc->snapshot, 2, skey);

	while ((tuple = FUNC19(sd, ForwardScanDirection)) != NULL)
	{
		Form_pg_largeobject data;
		bytea	   *datafield;
		bool		pfreeit;

		if (FUNC2(tuple))	/* paranoia */
			FUNC9(ERROR, "null field found in pg_largeobject");
		data = (Form_pg_largeobject) FUNC1(tuple);

		/*
		 * We expect the indexscan will deliver pages in order.  However,
		 * there may be missing pages if the LO contains unwritten "holes". We
		 * want missing sections to read out as zeroes.
		 */
		pageoff = ((uint64) data->pageno) * LOBLKSIZE;
		if (pageoff > obj_desc->offset)
		{
			n = pageoff - obj_desc->offset;
			n = (n <= (nbytes - nread)) ? n : (nbytes - nread);
			FUNC4(buf + nread, 0, n);
			nread += n;
			obj_desc->offset += n;
		}

		if (nread < nbytes)
		{
			FUNC0(obj_desc->offset >= pageoff);
			off = (int) (obj_desc->offset - pageoff);
			FUNC0(off >= 0 && off < LOBLKSIZE);

			FUNC13(data, &datafield, &len, &pfreeit);
			if (len > off)
			{
				n = len - off;
				n = (n <= (nbytes - nread)) ? n : (nbytes - nread);
				FUNC14(buf + nread, FUNC8(datafield) + off, n);
				nread += n;
				obj_desc->offset += n;
			}
			if (pfreeit)
				FUNC16(datafield);
		}

		if (nread >= nbytes)
			break;
	}

	FUNC18(sd);

	return nread;
}