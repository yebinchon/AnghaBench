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
typedef  scalar_t__ uint8 ;
struct TYPE_2__ {scalar_t__* fp_nodes; } ;
typedef  int /*<<< orphan*/  Page ;
typedef  TYPE_1__* FSMPage ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int LeafNodesPerPage ; 
 size_t NodesPerPage ; 
 int NonLeafNodesPerPage ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

bool
FUNC3(Page page, int nslots)
{
	FSMPage		fsmpage = (FSMPage) FUNC1(page);
	uint8	   *ptr;
	bool		changed = false;

	FUNC0(nslots >= 0 && nslots < LeafNodesPerPage);

	/* Clear all truncated leaf nodes */
	ptr = &fsmpage->fp_nodes[NonLeafNodesPerPage + nslots];
	for (; ptr < &fsmpage->fp_nodes[NodesPerPage]; ptr++)
	{
		if (*ptr != 0)
			changed = true;
		*ptr = 0;
	}

	/* Fix upper nodes. */
	if (changed)
		FUNC2(page);

	return changed;
}