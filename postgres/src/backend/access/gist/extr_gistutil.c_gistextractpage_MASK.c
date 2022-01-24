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
typedef  int /*<<< orphan*/  Page ;
typedef  int OffsetNumber ;
typedef  scalar_t__ IndexTuple ;

/* Variables and functions */
 int FirstOffsetNumber ; 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC4 (int) ; 

IndexTuple *
FUNC5(Page page, int *len /* out */ )
{
	OffsetNumber i,
				maxoff;
	IndexTuple *itvec;

	maxoff = FUNC3(page);
	*len = maxoff;
	itvec = FUNC4(sizeof(IndexTuple) * maxoff);
	for (i = FirstOffsetNumber; i <= maxoff; i = FUNC0(i))
		itvec[i - FirstOffsetNumber] = (IndexTuple) FUNC1(page, FUNC2(page, i));

	return itvec;
}