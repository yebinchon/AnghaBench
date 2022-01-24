#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_long ;
struct TYPE_4__ {int /*<<< orphan*/  ce; } ;
struct TYPE_5__ {int /*<<< orphan*/  fptr_cmp; TYPE_1__ std; } ;
typedef  TYPE_2__ spl_heap_object ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FAILURE ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  exception ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(zval *object, spl_heap_object *heap_object, zval *a, zval *b, zend_long *result) { /* {{{ */
	zval zresult;

	FUNC2(FUNC1(object), heap_object->std.ce, &heap_object->fptr_cmp, "compare", &zresult, a, b);

	if (FUNC0(exception)) {
		return FAILURE;
	}

	*result = FUNC3(&zresult);
	FUNC4(&zresult);

	return SUCCESS;
}