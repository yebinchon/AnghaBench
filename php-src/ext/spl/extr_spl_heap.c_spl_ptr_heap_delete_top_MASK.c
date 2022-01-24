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
struct TYPE_5__ {int count; scalar_t__ (* cmp ) (void*,void*,void*) ;int /*<<< orphan*/  flags; int /*<<< orphan*/  (* dtor ) (void*) ;} ;
typedef  TYPE_1__ spl_ptr_heap ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FAILURE ; 
 int /*<<< orphan*/  SPL_HEAP_CORRUPTED ; 
 int SUCCESS ; 
 int /*<<< orphan*/  exception ; 
 void* FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,void*,void*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 scalar_t__ FUNC4 (void*,void*,void*) ; 
 scalar_t__ FUNC5 (void*,void*,void*) ; 

__attribute__((used)) static int FUNC6(spl_ptr_heap *heap, void *elem, void *cmp_userdata) { /* {{{ */
	int i, j;
	const int limit = (heap->count-1)/2;
	void *bottom;

	if (heap->count == 0) {
		return FAILURE;
	}

	if (elem) {
		FUNC2(heap, elem, FUNC1(heap, 0));
	} else {
		heap->dtor(FUNC1(heap, 0));
	}

	bottom = FUNC1(heap, --heap->count);

	for (i = 0; i < limit; i = j) {
		/* Find smaller child */
		j = i * 2 + 1;
		if (j != heap->count && heap->cmp(FUNC1(heap, j+1), FUNC1(heap, j), cmp_userdata) > 0) {
			j++; /* next child is bigger */
		}

		/* swap elements between two levels */
		if(heap->cmp(bottom, FUNC1(heap, j), cmp_userdata) < 0) {
			FUNC2(heap, FUNC1(heap, i), FUNC1(heap, j));
		} else {
			break;
		}
	}

	if (FUNC0(exception)) {
		/* exception thrown during comparison */
		heap->flags |= SPL_HEAP_CORRUPTED;
	}

	FUNC2(heap, FUNC1(heap, i), bottom);
	return SUCCESS;
}