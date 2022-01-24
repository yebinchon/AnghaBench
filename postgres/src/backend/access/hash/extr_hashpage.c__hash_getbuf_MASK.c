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
 int /*<<< orphan*/  ERROR ; 
 int HASH_NOLOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ P_NEW ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

Buffer
FUNC4(Relation rel, BlockNumber blkno, int access, int flags)
{
	Buffer		buf;

	if (blkno == P_NEW)
		FUNC3(ERROR, "hash AM does not use P_NEW");

	buf = FUNC1(rel, blkno);

	if (access != HASH_NOLOCK)
		FUNC0(buf, access);

	/* ref count and lock type are correct */

	FUNC2(rel, buf, flags);

	return buf;
}