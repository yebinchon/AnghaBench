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
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 
 int NodesPerPage ; 
 int NonLeafNodesPerPage ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 

bool
FUNC6(Page page, int slot, uint8 value)
{
	int			nodeno = NonLeafNodesPerPage + slot;
	FSMPage		fsmpage = (FSMPage) FUNC2(page);
	uint8		oldvalue;

	FUNC0(slot < LeafNodesPerPage);

	oldvalue = fsmpage->fp_nodes[nodeno];

	/* If the value hasn't changed, we don't need to do anything */
	if (oldvalue == value && value <= fsmpage->fp_nodes[0])
		return false;

	fsmpage->fp_nodes[nodeno] = value;

	/*
	 * Propagate up, until we hit the root or a node that doesn't need to be
	 * updated.
	 */
	do
	{
		uint8		newvalue = 0;
		int			lchild;
		int			rchild;

		nodeno = FUNC5(nodeno);
		lchild = FUNC4(nodeno);
		rchild = lchild + 1;

		newvalue = fsmpage->fp_nodes[lchild];
		if (rchild < NodesPerPage)
			newvalue = FUNC1(newvalue,
						   fsmpage->fp_nodes[rchild]);

		oldvalue = fsmpage->fp_nodes[nodeno];
		if (oldvalue == newvalue)
			break;

		fsmpage->fp_nodes[nodeno] = newvalue;
	} while (nodeno > 0);

	/*
	 * sanity check: if the new value is (still) higher than the value at the
	 * top, the tree is corrupt.  If so, rebuild.
	 */
	if (value > fsmpage->fp_nodes[0])
		FUNC3(page);

	return true;
}