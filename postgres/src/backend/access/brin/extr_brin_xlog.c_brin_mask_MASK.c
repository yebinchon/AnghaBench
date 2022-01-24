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
struct TYPE_2__ {scalar_t__ pd_lower; } ;
typedef  TYPE_1__* PageHeader ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  BlockNumber ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ SizeOfPageHeaderData ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5(char *pagedata, BlockNumber blkno)
{
	Page		page = (Page) pagedata;
	PageHeader	pagehdr = (PageHeader) page;

	FUNC3(page);

	FUNC2(page);

	/*
	 * Regular brin pages contain unused space which needs to be masked.
	 * Similarly for meta pages, but mask it only if pd_lower appears to have
	 * been set correctly.
	 */
	if (FUNC1(page) ||
		(FUNC0(page) && pagehdr->pd_lower > SizeOfPageHeaderData))
	{
		FUNC4(page);
	}
}