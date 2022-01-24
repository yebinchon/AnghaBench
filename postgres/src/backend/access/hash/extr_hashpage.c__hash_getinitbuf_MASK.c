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
typedef  int /*<<< orphan*/  Buffer ;
typedef  scalar_t__ BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  MAIN_FORKNUM ; 
 scalar_t__ P_NEW ; 
 int /*<<< orphan*/  RBM_ZERO_AND_LOCK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

Buffer
FUNC5(Relation rel, BlockNumber blkno)
{
	Buffer		buf;

	if (blkno == P_NEW)
		FUNC4(ERROR, "hash AM does not use P_NEW");

	buf = FUNC2(rel, MAIN_FORKNUM, blkno, RBM_ZERO_AND_LOCK,
							 NULL);

	/* ref count and lock type are correct */

	/* initialize the page */
	FUNC3(FUNC0(buf), FUNC1(buf));

	return buf;
}