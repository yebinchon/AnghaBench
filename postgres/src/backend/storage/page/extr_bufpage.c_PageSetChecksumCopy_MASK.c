#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  pd_checksum; } ;
typedef  TYPE_1__* PageHeader ;
typedef  scalar_t__ Page ;
typedef  int /*<<< orphan*/  BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  BLCKSZ ; 
 int /*<<< orphan*/  FUNC0 () ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  TopMemoryContext ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 

char *
FUNC5(Page page, BlockNumber blkno)
{
	static char *pageCopy = NULL;

	/* If we don't need a checksum, just return the passed-in data */
	if (FUNC2(page) || !FUNC0())
		return (char *) page;

	/*
	 * We allocate the copy space once and use it over on each subsequent
	 * call.  The point of palloc'ing here, rather than having a static char
	 * array, is first to ensure adequate alignment for the checksumming code
	 * and second to avoid wasting space in processes that never call this.
	 */
	if (pageCopy == NULL)
		pageCopy = FUNC1(TopMemoryContext, BLCKSZ);

	FUNC3(pageCopy, (char *) page, BLCKSZ);
	((PageHeader) pageCopy)->pd_checksum = FUNC4(pageCopy, blkno);
	return pageCopy;
}