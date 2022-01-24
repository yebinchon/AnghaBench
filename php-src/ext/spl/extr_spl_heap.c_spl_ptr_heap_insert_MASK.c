#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int count; int max_size; size_t elem_size; scalar_t__ (* cmp ) (void*,void*,void*) ;int /*<<< orphan*/  flags; scalar_t__ elements; } ;
typedef  TYPE_1__ spl_ptr_heap ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPL_HEAP_CORRUPTED ; 
 scalar_t__ FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  exception ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,size_t) ; 
 void* FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,void*,void*) ; 
 scalar_t__ FUNC5 (void*,void*,void*) ; 

__attribute__((used)) static void FUNC6(spl_ptr_heap *heap, void *elem, void *cmp_userdata) { /* {{{ */
	int i;

	if (heap->count+1 > heap->max_size) {
		size_t alloc_size = heap->max_size * heap->elem_size;
		/* we need to allocate more memory */
		heap->elements  = FUNC1(heap->elements, 2 * alloc_size);
		FUNC2((char *) heap->elements + alloc_size, 0, alloc_size);
		heap->max_size *= 2;
	}

	/* sifting up */
	for (i = heap->count; i > 0 && heap->cmp(FUNC3(heap, (i-1)/2), elem, cmp_userdata) < 0; i = (i-1)/2) {
		FUNC4(heap, FUNC3(heap, i), FUNC3(heap, (i-1)/2));
	}
	heap->count++;

	if (FUNC0(exception)) {
		/* exception thrown during comparison */
		heap->flags |= SPL_HEAP_CORRUPTED;
	}

	FUNC4(heap, FUNC3(heap, i), elem);
}