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
typedef  scalar_t__ BlockNumber ;

/* Variables and functions */
 int BLCKSZ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ InvalidBlockNumber ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

BlockNumber
FUNC2(Relation rel)
{
	BlockNumber blkno = FUNC0(rel, BLCKSZ / 2);

	if (blkno != InvalidBlockNumber)
		FUNC1(rel, blkno);

	return blkno;
}