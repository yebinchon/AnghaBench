#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int bh_size; scalar_t__ (* bh_compare ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  bh_arg; int /*<<< orphan*/ * bh_nodes; } ;
typedef  TYPE_1__ binaryheap ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,int) ; 

__attribute__((used)) static void
FUNC6(binaryheap *heap, int node_off)
{
	while (true)
	{
		int			left_off = FUNC0(node_off);
		int			right_off = FUNC1(node_off);
		int			swap_off = 0;

		/* Is the left child larger than the parent? */
		if (left_off < heap->bh_size &&
			heap->bh_compare(heap->bh_nodes[node_off],
							 heap->bh_nodes[left_off],
							 heap->bh_arg) < 0)
			swap_off = left_off;

		/* Is the right child larger than the parent? */
		if (right_off < heap->bh_size &&
			heap->bh_compare(heap->bh_nodes[node_off],
							 heap->bh_nodes[right_off],
							 heap->bh_arg) < 0)
		{
			/* swap with the larger child */
			if (!swap_off ||
				heap->bh_compare(heap->bh_nodes[left_off],
								 heap->bh_nodes[right_off],
								 heap->bh_arg) < 0)
				swap_off = right_off;
		}

		/*
		 * If we didn't find anything to swap, the heap condition is
		 * satisfied, and we're done.
		 */
		if (!swap_off)
			break;

		/*
		 * Otherwise, swap the node with the child that violates the heap
		 * property; then go on to check its children.
		 */
		FUNC5(heap, swap_off, node_off);
		node_off = swap_off;
	}
}