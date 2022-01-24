#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32 ;
struct TYPE_10__ {int /*<<< orphan*/  t_info; } ;
typedef  int /*<<< orphan*/  Page ;
typedef  TYPE_1__* IndexTuple ;
typedef  int /*<<< orphan*/  BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INDEX_SIZE_MASK ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static IndexTuple
FUNC8(IndexTuple itup, Page page, BlockNumber childblk)
{
	IndexTuple	nitup;

	if (FUNC2(page) && !FUNC1(itup))
	{
		/* Tuple contains a posting list, just copy stuff before that */
		uint32		origsize = FUNC0(itup);

		origsize = FUNC5(origsize);
		nitup = (IndexTuple) FUNC7(origsize);
		FUNC6(nitup, itup, origsize);
		/* ... be sure to fix the size header field ... */
		nitup->t_info &= ~INDEX_SIZE_MASK;
		nitup->t_info |= origsize;
	}
	else
	{
		/* Copy the tuple as-is */
		nitup = (IndexTuple) FUNC7(FUNC4(itup));
		FUNC6(nitup, itup, FUNC4(itup));
	}

	/* Now insert the correct downlink */
	FUNC3(nitup, childblk);

	return nitup;
}