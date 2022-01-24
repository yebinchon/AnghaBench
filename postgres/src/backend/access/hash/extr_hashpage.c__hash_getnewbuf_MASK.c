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
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  ForkNumber ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  scalar_t__ BlockNumber ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  HASH_WRITE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ P_NEW ; 
 int /*<<< orphan*/  RBM_NORMAL ; 
 int /*<<< orphan*/  RBM_ZERO_AND_LOCK ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 

Buffer
FUNC9(Relation rel, BlockNumber blkno, ForkNumber forkNum)
{
	BlockNumber nblocks = FUNC5(rel, forkNum);
	Buffer		buf;

	if (blkno == P_NEW)
		FUNC8(ERROR, "hash AM does not use P_NEW");
	if (blkno > nblocks)
		FUNC8(ERROR, "access to noncontiguous page in hash index \"%s\"",
			 FUNC6(rel));

	/* smgr insists we use P_NEW to extend the relation */
	if (blkno == nblocks)
	{
		buf = FUNC4(rel, forkNum, P_NEW, RBM_NORMAL, NULL);
		if (FUNC0(buf) != blkno)
			FUNC8(ERROR, "unexpected hash relation size: %u, should be %u",
				 FUNC0(buf), blkno);
		FUNC3(buf, HASH_WRITE);
	}
	else
	{
		buf = FUNC4(rel, forkNum, blkno, RBM_ZERO_AND_LOCK,
								 NULL);
	}

	/* ref count and lock type are correct */

	/* initialize the page */
	FUNC7(FUNC1(buf), FUNC2(buf));

	return buf;
}