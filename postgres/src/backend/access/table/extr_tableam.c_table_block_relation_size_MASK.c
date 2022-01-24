#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64 ;
struct TYPE_4__ {int /*<<< orphan*/  rd_smgr; } ;
typedef  TYPE_1__* Relation ;
typedef  int ForkNumber ;

/* Variables and functions */
 int BLCKSZ ; 
 int InvalidForkNumber ; 
 int MAX_FORKNUM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 

uint64
FUNC2(Relation rel, ForkNumber forkNumber)
{
	uint64		nblocks = 0;

	/* Open it at the smgr level if not already done */
	FUNC0(rel);

	/* InvalidForkNumber indicates returning the size for all forks */
	if (forkNumber == InvalidForkNumber)
	{
		for (int i = 0; i < MAX_FORKNUM; i++)
			nblocks += FUNC1(rel->rd_smgr, i);
	}
	else
		nblocks = FUNC1(rel->rd_smgr, forkNumber);

	return nblocks * BLCKSZ;
}