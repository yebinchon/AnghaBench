#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int bh_size; int /*<<< orphan*/ * bh_nodes; scalar_t__ bh_has_heap_property; } ;
typedef  TYPE_1__ binaryheap ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

Datum
FUNC4(binaryheap *heap)
{
	FUNC0(!FUNC1(heap) && heap->bh_has_heap_property);

	if (heap->bh_size == 1)
	{
		heap->bh_size--;
		return heap->bh_nodes[0];
	}

	/*
	 * Swap the root and last nodes, decrease the size of the heap (i.e.
	 * remove the former root node) and sift the new root node down to its
	 * correct position.
	 */
	FUNC3(heap, 0, heap->bh_size - 1);
	heap->bh_size--;
	FUNC2(heap, 0);

	return heap->bh_nodes[heap->bh_size];
}