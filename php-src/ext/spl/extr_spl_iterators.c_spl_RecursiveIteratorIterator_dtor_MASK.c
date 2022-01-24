#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zend_object_iterator ;
typedef  int /*<<< orphan*/  zend_object ;
struct TYPE_4__ {size_t level; TYPE_3__* iterators; } ;
typedef  TYPE_1__ spl_recursive_it_object ;
struct TYPE_5__ {int /*<<< orphan*/  zobject; int /*<<< orphan*/ * iterator; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(zend_object *_object)
{
	spl_recursive_it_object *object = FUNC1(_object);
	zend_object_iterator *sub_iter;

	/* call standard dtor */
	FUNC3(_object);

	if (object->iterators) {
		while (object->level >= 0) {
			sub_iter = object->iterators[object->level].iterator;
			FUNC2(sub_iter);
			FUNC4(&object->iterators[object->level--].zobject);
		}
		FUNC0(object->iterators);
		object->iterators = NULL;
	}
}