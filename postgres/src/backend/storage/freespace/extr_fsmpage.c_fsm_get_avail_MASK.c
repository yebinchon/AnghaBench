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
typedef  int /*<<< orphan*/  uint8 ;
struct TYPE_2__ {int /*<<< orphan*/ * fp_nodes; } ;
typedef  int /*<<< orphan*/  Page ;
typedef  TYPE_1__* FSMPage ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int LeafNodesPerPage ; 
 int NonLeafNodesPerPage ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

uint8
FUNC2(Page page, int slot)
{
	FSMPage		fsmpage = (FSMPage) FUNC1(page);

	FUNC0(slot < LeafNodesPerPage);

	return fsmpage->fp_nodes[NonLeafNodesPerPage + slot];
}