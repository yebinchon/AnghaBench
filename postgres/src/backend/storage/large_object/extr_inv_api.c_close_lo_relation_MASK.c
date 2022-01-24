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
typedef  int /*<<< orphan*/  ResourceOwner ;

/* Variables and functions */
 int /*<<< orphan*/  CurrentResourceOwner ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/  TopTransactionResourceOwner ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * lo_heap_r ; 
 int /*<<< orphan*/ * lo_index_r ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC2(bool isCommit)
{
	if (lo_heap_r || lo_index_r)
	{
		/*
		 * Only bother to close if committing; else abort cleanup will handle
		 * it
		 */
		if (isCommit)
		{
			ResourceOwner currentOwner;

			currentOwner = CurrentResourceOwner;
			CurrentResourceOwner = TopTransactionResourceOwner;

			if (lo_index_r)
				FUNC0(lo_index_r, NoLock);
			if (lo_heap_r)
				FUNC1(lo_heap_r, NoLock);

			CurrentResourceOwner = currentOwner;
		}
		lo_heap_r = NULL;
		lo_index_r = NULL;
	}
}