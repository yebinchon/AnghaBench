#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/ * next_sibling; int /*<<< orphan*/ * prev_or_parent; struct TYPE_9__* first_child; } ;
typedef  TYPE_1__ pairingheap_node ;
struct TYPE_10__ {TYPE_1__* ph_root; } ;
typedef  TYPE_2__ pairingheap ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

pairingheap_node *
FUNC3(pairingheap *heap)
{
	pairingheap_node *result;
	pairingheap_node *children;

	FUNC0(!FUNC2(heap));

	/* Remove the root, and form a new heap of its children. */
	result = heap->ph_root;
	children = result->first_child;

	heap->ph_root = FUNC1(heap, children);
	if (heap->ph_root)
	{
		heap->ph_root->prev_or_parent = NULL;
		heap->ph_root->next_sibling = NULL;
	}

	return result;
}