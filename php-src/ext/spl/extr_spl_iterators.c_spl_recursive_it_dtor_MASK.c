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
typedef  int /*<<< orphan*/  zend_object_iterator ;
typedef  int /*<<< orphan*/  spl_sub_iterator ;
struct TYPE_8__ {size_t level; TYPE_4__* iterators; } ;
typedef  TYPE_2__ spl_recursive_it_object ;
struct TYPE_7__ {int /*<<< orphan*/  data; } ;
struct TYPE_9__ {TYPE_1__ intern; } ;
typedef  TYPE_3__ spl_recursive_it_iterator ;
struct TYPE_10__ {int /*<<< orphan*/  zobject; int /*<<< orphan*/ * iterator; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC2 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(zend_object_iterator *_iter)
{
	spl_recursive_it_iterator *iter   = (spl_recursive_it_iterator*)_iter;
	spl_recursive_it_object   *object = FUNC1(&iter->intern.data);
	zend_object_iterator      *sub_iter;

	while (object->level > 0) {
		if (!FUNC0(object->iterators[object->level].zobject)) {
			sub_iter = object->iterators[object->level].iterator;
			FUNC3(sub_iter);
			FUNC4(&object->iterators[object->level].zobject);
		}
		object->level--;
	}
	object->iterators = FUNC2(object->iterators, sizeof(spl_sub_iterator));
	object->level = 0;

	FUNC4(&iter->intern.data);
}