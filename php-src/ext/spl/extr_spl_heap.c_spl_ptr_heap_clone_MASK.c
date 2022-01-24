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
struct TYPE_6__ {int max_size; int count; int elem_size; int /*<<< orphan*/  (* ctor ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  elements; int /*<<< orphan*/  flags; int /*<<< orphan*/  cmp; int /*<<< orphan*/  dtor; } ;
typedef  TYPE_1__ spl_ptr_heap ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static spl_ptr_heap *FUNC5(spl_ptr_heap *from) { /* {{{ */
	int i;

	spl_ptr_heap *heap = FUNC0(sizeof(spl_ptr_heap));

	heap->dtor     = from->dtor;
	heap->ctor     = from->ctor;
	heap->cmp      = from->cmp;
	heap->max_size = from->max_size;
	heap->count    = from->count;
	heap->flags    = from->flags;
	heap->elem_size = from->elem_size;

	heap->elements = FUNC2(from->elem_size, from->max_size, 0);
	FUNC1(heap->elements, from->elements, from->elem_size * from->max_size);

	for (i = 0; i < heap->count; ++i) {
		heap->ctor(FUNC3(heap, i));
	}

	return heap;
}