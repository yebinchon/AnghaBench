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
typedef  int /*<<< orphan*/  uint32 ;
typedef  int /*<<< orphan*/  Size ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  OffsetNumber ;
typedef  int /*<<< orphan*/  Item ;
typedef  scalar_t__ IndexTuple ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ InvalidOffsetNumber ; 
 int LH_BUCKET_PAGE ; 
 int LH_OVERFLOW_PAGE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

OffsetNumber
FUNC7(Relation rel, Buffer buf, Size itemsize, IndexTuple itup)
{
	OffsetNumber itup_off;
	Page		page;
	uint32		hashkey;

	FUNC4(rel, buf, LH_BUCKET_PAGE | LH_OVERFLOW_PAGE);
	page = FUNC0(buf);

	/* Find where to insert the tuple (preserving page's hashkey ordering) */
	hashkey = FUNC5(itup);
	itup_off = FUNC3(page, hashkey);

	if (FUNC1(page, (Item) itup, itemsize, itup_off, false, false)
		== InvalidOffsetNumber)
		FUNC6(ERROR, "failed to add index item to \"%s\"",
			 FUNC2(rel));

	return itup_off;
}