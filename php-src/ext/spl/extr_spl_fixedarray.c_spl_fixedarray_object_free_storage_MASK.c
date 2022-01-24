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
typedef  int /*<<< orphan*/  zend_object ;
typedef  size_t zend_long ;
struct TYPE_4__ {scalar_t__ size; int /*<<< orphan*/ * elements; } ;
struct TYPE_5__ {int /*<<< orphan*/  std; TYPE_1__ array; } ;
typedef  TYPE_2__ spl_fixedarray_object ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(zend_object *object) /* {{{ */
{
	spl_fixedarray_object *intern = FUNC1(object);
	zend_long i;

	if (intern->array.size > 0) {
		for (i = 0; i < intern->array.size; i++) {
			FUNC3(&(intern->array.elements[i]));
		}

		if (intern->array.size > 0 && intern->array.elements) {
			FUNC0(intern->array.elements);
		}
	}

	FUNC2(&intern->std);
}