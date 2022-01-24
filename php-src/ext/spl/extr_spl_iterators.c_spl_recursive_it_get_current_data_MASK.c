#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_10__ {TYPE_2__* funcs; int /*<<< orphan*/  data; } ;
typedef  TYPE_3__ zend_object_iterator ;
struct TYPE_11__ {size_t level; TYPE_1__* iterators; } ;
typedef  TYPE_4__ spl_recursive_it_object ;
struct TYPE_9__ {int /*<<< orphan*/ * (* get_current_data ) (TYPE_3__*) ;} ;
struct TYPE_8__ {TYPE_3__* iterator; } ;

/* Variables and functions */
 TYPE_4__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_3__*) ; 

__attribute__((used)) static zval *FUNC2(zend_object_iterator *iter)
{
	spl_recursive_it_object *object = FUNC0(&iter->data);
	zend_object_iterator *sub_iter = object->iterators[object->level].iterator;

	return sub_iter->funcs->get_current_data(sub_iter);
}