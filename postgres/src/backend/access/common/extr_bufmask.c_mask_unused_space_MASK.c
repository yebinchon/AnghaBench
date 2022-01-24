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
struct TYPE_2__ {int pd_lower; int pd_upper; int pd_special; } ;
typedef  TYPE_1__* PageHeader ;
typedef  scalar_t__ Page ;

/* Variables and functions */
 int BLCKSZ ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  MASK_MARKER ; 
 int SizeOfPageHeaderData ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int) ; 

void
FUNC2(Page page)
{
	int			pd_lower = ((PageHeader) page)->pd_lower;
	int			pd_upper = ((PageHeader) page)->pd_upper;
	int			pd_special = ((PageHeader) page)->pd_special;

	/* Sanity check */
	if (pd_lower > pd_upper || pd_special < pd_upper ||
		pd_lower < SizeOfPageHeaderData || pd_special > BLCKSZ)
	{
		FUNC0(ERROR, "invalid page pd_lower %u pd_upper %u pd_special %u\n",
			 pd_lower, pd_upper, pd_special);
	}

	FUNC1(page + pd_lower, MASK_MARKER, pd_upper - pd_lower);
}