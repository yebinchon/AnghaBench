#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t int32 ;
struct TYPE_4__ {size_t ntuples; scalar_t__ rightlink; } ;
typedef  TYPE_1__ ginxlogInsertListPage ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_6__ {int maxoff; scalar_t__ rightlink; } ;
struct TYPE_5__ {char* data; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  TYPE_2__ PGAlignedBlock ;
typedef  int /*<<< orphan*/  OffsetNumber ;
typedef  int /*<<< orphan*/  Item ;
typedef  scalar_t__ IndexTuple ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  scalar_t__ BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t BLCKSZ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FirstOffsetNumber ; 
 int /*<<< orphan*/  GIN_LIST ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (scalar_t__) ; 
 scalar_t__ InvalidBlockNumber ; 
 int /*<<< orphan*/  InvalidOffsetNumber ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int) ; 
 size_t FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REGBUF_WILL_INIT ; 
 int /*<<< orphan*/  RM_GIN_ID ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XLOG_GIN_INSERT_LISTPAGE ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (char*,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (char*,scalar_t__,int) ; 

__attribute__((used)) static int32
FUNC22(Relation index, Buffer buffer,
			  IndexTuple *tuples, int32 ntuples, BlockNumber rightlink)
{
	Page		page = FUNC1(buffer);
	int32		i,
				freesize,
				size = 0;
	OffsetNumber l,
				off;
	PGAlignedBlock workspace;
	char	   *ptr;

	FUNC13();

	FUNC3(buffer, GIN_LIST);

	off = FirstOffsetNumber;
	ptr = workspace.data;

	for (i = 0; i < ntuples; i++)
	{
		int			this_size = FUNC6(tuples[i]);

		FUNC21(ptr, tuples[i], this_size);
		ptr += this_size;
		size += this_size;

		l = FUNC8(page, (Item) tuples[i], this_size, off, false, false);

		if (l == InvalidOffsetNumber)
			FUNC20(ERROR, "failed to add item to index page in \"%s\"",
				 FUNC11(index));

		off++;
	}

	FUNC0(size <= BLCKSZ);		/* else we overran workspace */

	FUNC4(page)->rightlink = rightlink;

	/*
	 * tail page may contain only whole row(s) or final part of row placed on
	 * previous pages (a "row" here meaning all the index tuples generated for
	 * one heap tuple)
	 */
	if (rightlink == InvalidBlockNumber)
	{
		FUNC5(page);
		FUNC4(page)->maxoff = 1;
	}
	else
	{
		FUNC4(page)->maxoff = 0;
	}

	FUNC7(buffer);

	if (FUNC12(index))
	{
		ginxlogInsertListPage data;
		XLogRecPtr	recptr;

		data.rightlink = rightlink;
		data.ntuples = ntuples;

		FUNC15();
		FUNC19((char *) &data, sizeof(ginxlogInsertListPage));

		FUNC18(0, buffer, REGBUF_WILL_INIT);
		FUNC17(0, workspace.data, size);

		recptr = FUNC16(RM_GIN_ID, XLOG_GIN_INSERT_LISTPAGE);
		FUNC10(page, recptr);
	}

	/* get free space before releasing buffer */
	freesize = FUNC9(page);

	FUNC14(buffer);

	FUNC2();

	return freesize;
}