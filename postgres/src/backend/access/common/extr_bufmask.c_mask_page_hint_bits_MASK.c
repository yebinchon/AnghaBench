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
struct TYPE_2__ {int /*<<< orphan*/  pd_prune_xid; } ;
typedef  TYPE_1__* PageHeader ;
typedef  int /*<<< orphan*/  Page ;

/* Variables and functions */
 int /*<<< orphan*/  MASK_MARKER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void
FUNC3(Page page)
{
	PageHeader	phdr = (PageHeader) page;

	/* Ignore prune_xid (it's like a hint-bit) */
	phdr->pd_prune_xid = MASK_MARKER;

	/* Ignore PD_PAGE_FULL and PD_HAS_FREE_LINES flags, they are just hints. */
	FUNC1(page);
	FUNC2(page);

	/*
	 * During replay, if the page LSN has advanced past our XLOG record's LSN,
	 * we don't mark the page all-visible. See heap_xlog_visible() for
	 * details.
	 */
	FUNC0(page);
}