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
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_long ;
struct TYPE_4__ {scalar_t__ fptr_cmp; } ;
typedef  TYPE_1__ spl_heap_object ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FAILURE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  exception ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(void *x, void *y, zval *object) { /* {{{ */
	zval *a = x, *b = y;

	if (FUNC0(exception)) {
		return 0;
	}

	if (object) {
		spl_heap_object *heap_object = FUNC2(object);
		if (heap_object->fptr_cmp) {
			zend_long lval = 0;
			if (FUNC3(object, heap_object, a, b, &lval) == FAILURE) {
				/* exception or call failure */
				return 0;
			}
			return FUNC1(lval);
		}
	}

	return FUNC4(a, b);
}