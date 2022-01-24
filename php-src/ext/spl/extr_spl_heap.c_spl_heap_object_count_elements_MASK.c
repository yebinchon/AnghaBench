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
typedef  int /*<<< orphan*/  zend_object ;
typedef  int /*<<< orphan*/  zend_long ;
struct TYPE_4__ {int /*<<< orphan*/  ce; } ;
struct TYPE_5__ {int /*<<< orphan*/  heap; scalar_t__ fptr_count; TYPE_1__ std; } ;
typedef  TYPE_2__ spl_heap_object ;

/* Variables and functions */
 int FAILURE ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(zend_object *object, zend_long *count) /* {{{ */
{
	spl_heap_object *intern = FUNC1(object);

	if (intern->fptr_count) {
		zval rv;
		FUNC3(object, intern->std.ce, &intern->fptr_count, "count", &rv);
		if (!FUNC0(rv)) {
			*count = FUNC4(&rv);
			FUNC5(&rv);
			return SUCCESS;
		}
		*count = 0;
		return FAILURE;
	}

	*count = FUNC2(intern->heap);

	return SUCCESS;
}