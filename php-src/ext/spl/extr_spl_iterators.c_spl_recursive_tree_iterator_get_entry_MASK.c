#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_9__ {TYPE_2__* funcs; } ;
typedef  TYPE_3__ zend_object_iterator ;
struct TYPE_10__ {size_t level; TYPE_1__* iterators; } ;
typedef  TYPE_4__ spl_recursive_it_object ;
struct TYPE_8__ {int /*<<< orphan*/ * (* get_current_data ) (TYPE_3__*) ;} ;
struct TYPE_7__ {TYPE_3__* iterator; } ;

/* Variables and functions */
 scalar_t__ IS_ARRAY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZEND_STR_ARRAY_CAPITALIZED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC7(spl_recursive_it_object *object, zval *return_value)
{
	zend_object_iterator      *iterator = object->iterators[object->level].iterator;
	zval                      *data;

	data = iterator->funcs->get_current_data(iterator);
	if (data) {
		FUNC3(data);
		/* TODO: Remove this special case? */
		if (FUNC4(data) == IS_ARRAY) {
			FUNC0(FUNC1(ZEND_STR_ARRAY_CAPITALIZED));
		} else {
			FUNC2(return_value, data);
			FUNC5(return_value);
		}
	}
}