#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int flags; } ;
typedef  TYPE_1__ ginxlogSplit ;
typedef  int /*<<< orphan*/  XLogReaderState ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 scalar_t__ BLK_RESTORED ; 
 int /*<<< orphan*/  ERROR ; 
 int GIN_INSERT_ISLEAF ; 
 int GIN_SPLIT_ROOT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC5(XLogReaderState *record)
{
	ginxlogSplit *data = (ginxlogSplit *) FUNC2(record);
	Buffer		lbuffer,
				rbuffer,
				rootbuf;
	bool		isLeaf = (data->flags & GIN_INSERT_ISLEAF) != 0;
	bool		isRoot = (data->flags & GIN_SPLIT_ROOT) != 0;

	/*
	 * First clear incomplete-split flag on child page if this finishes a
	 * split
	 */
	if (!isLeaf)
		FUNC4(record, 3);

	if (FUNC1(record, 0, &lbuffer) != BLK_RESTORED)
		FUNC3(ERROR, "GIN split record did not contain a full-page image of left page");

	if (FUNC1(record, 1, &rbuffer) != BLK_RESTORED)
		FUNC3(ERROR, "GIN split record did not contain a full-page image of right page");

	if (isRoot)
	{
		if (FUNC1(record, 2, &rootbuf) != BLK_RESTORED)
			FUNC3(ERROR, "GIN split record did not contain a full-page image of root page");
		FUNC0(rootbuf);
	}

	FUNC0(rbuffer);
	FUNC0(lbuffer);
}