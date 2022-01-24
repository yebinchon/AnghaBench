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
typedef  int /*<<< orphan*/  Bitmapset ;
typedef  scalar_t__ AttrNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int MaxAttrNumber ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 

AttrNumber *
FUNC5(Bitmapset *attrs, int *numattrs)
{
	int			i,
				j;
	AttrNumber *attnums;
	int			num = FUNC3(attrs);

	if (numattrs)
		*numattrs = num;

	/* build attnums from the bitmapset */
	attnums = (AttrNumber *) FUNC4(sizeof(AttrNumber) * num);
	i = 0;
	j = -1;
	while ((j = FUNC2(attrs, j)) >= 0)
	{
		/*
		 * Make sure the bitmap contains only user-defined attributes. As
		 * bitmaps can't contain negative values, this can be violated in two
		 * ways. Firstly, the bitmap might contain 0 as a member, and secondly
		 * the integer value might be larger than MaxAttrNumber.
		 */
		FUNC0(FUNC1(j));
		FUNC0(j <= MaxAttrNumber);

		attnums[i++] = (AttrNumber) j;

		/* protect against overflows */
		FUNC0(i <= num);
	}

	return attnums;
}