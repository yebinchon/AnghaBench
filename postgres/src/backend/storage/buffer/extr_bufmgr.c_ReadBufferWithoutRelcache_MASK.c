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
typedef  int /*<<< orphan*/  SMgrRelation ;
typedef  int /*<<< orphan*/  RelFileNode ;
typedef  int /*<<< orphan*/  ReadBufferMode ;
typedef  int /*<<< orphan*/  ForkNumber ;
typedef  int /*<<< orphan*/  BufferAccessStrategy ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  int /*<<< orphan*/  BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InRecovery ; 
 int /*<<< orphan*/  InvalidBackendId ; 
 int /*<<< orphan*/  RELPERSISTENCE_PERMANENT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

Buffer
FUNC3(RelFileNode rnode, ForkNumber forkNum,
						  BlockNumber blockNum, ReadBufferMode mode,
						  BufferAccessStrategy strategy)
{
	bool		hit;

	SMgrRelation smgr = FUNC2(rnode, InvalidBackendId);

	FUNC0(InRecovery);

	return FUNC1(smgr, RELPERSISTENCE_PERMANENT, forkNum, blockNum,
							 mode, strategy, &hit);
}