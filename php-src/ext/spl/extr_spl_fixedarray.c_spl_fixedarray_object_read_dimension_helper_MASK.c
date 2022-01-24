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
typedef  size_t zend_long ;
struct TYPE_4__ {size_t size; int /*<<< orphan*/ * elements; } ;
struct TYPE_5__ {TYPE_1__ array; } ;
typedef  TYPE_2__ spl_fixedarray_object ;

/* Variables and functions */
 scalar_t__ IS_LONG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  spl_ce_RuntimeException ; 
 size_t FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline zval *FUNC5(spl_fixedarray_object *intern, zval *offset) /* {{{ */
{
	zend_long index;

	/* we have to return NULL on error here to avoid memleak because of
	 * ZE duplicating uninitialized_zval_ptr */
	if (!offset) {
		FUNC4(spl_ce_RuntimeException, "Index invalid or out of range", 0);
		return NULL;
	}

	if (FUNC2(offset) != IS_LONG) {
		index = FUNC3(offset);
	} else {
		index = FUNC1(offset);
	}

	if (index < 0 || index >= intern->array.size) {
		FUNC4(spl_ce_RuntimeException, "Index invalid or out of range", 0);
		return NULL;
	} else if (FUNC0(intern->array.elements[index])) {
		return NULL;
	} else {
		return &intern->array.elements[index];
	}
}