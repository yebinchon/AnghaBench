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
typedef  int uint16 ;
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
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ InvalidOffsetNumber ; 
 int LH_BUCKET_PAGE ; 
 int LH_OVERFLOW_PAGE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

void
FUNC9(Relation rel, Buffer buf, IndexTuple *itups,
					OffsetNumber *itup_offsets, uint16 nitups)
{
	OffsetNumber itup_off;
	Page		page;
	uint32		hashkey;
	int			i;

	FUNC6(rel, buf, LH_BUCKET_PAGE | LH_OVERFLOW_PAGE);
	page = FUNC0(buf);

	for (i = 0; i < nitups; i++)
	{
		Size		itemsize;

		itemsize = FUNC1(itups[i]);
		itemsize = FUNC2(itemsize);

		/* Find where to insert the tuple (preserving page's hashkey ordering) */
		hashkey = FUNC7(itups[i]);
		itup_off = FUNC5(page, hashkey);

		itup_offsets[i] = itup_off;

		if (FUNC3(page, (Item) itups[i], itemsize, itup_off, false, false)
			== InvalidOffsetNumber)
			FUNC8(ERROR, "failed to add index item to \"%s\"",
				 FUNC4(rel));
	}
}