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
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 int NodesPerPage ; 
 int NonLeafNodesPerPage ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 

bool
FUNC3(Page page)
{
	FSMPage		fsmpage = (FSMPage) FUNC1(page);
	bool		changed = false;
	int			nodeno;

	/*
	 * Start from the lowest non-leaf level, at last node, working our way
	 * backwards, through all non-leaf nodes at all levels, up to the root.
	 */
	for (nodeno = NonLeafNodesPerPage - 1; nodeno >= 0; nodeno--)
	{
		int			lchild = FUNC2(nodeno);
		int			rchild = lchild + 1;
		uint8		newvalue = 0;

		/* The first few nodes we examine might have zero or one child. */
		if (lchild < NodesPerPage)
			newvalue = fsmpage->fp_nodes[lchild];

		if (rchild < NodesPerPage)
			newvalue = FUNC0(newvalue,
						   fsmpage->fp_nodes[rchild]);

		if (fsmpage->fp_nodes[nodeno] != newvalue)
		{
			fsmpage->fp_nodes[nodeno] = newvalue;
			changed = true;
		}
	}

	return changed;
}