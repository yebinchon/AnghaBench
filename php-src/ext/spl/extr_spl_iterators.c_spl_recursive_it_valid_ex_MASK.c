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
struct TYPE_9__ {TYPE_1__* funcs; } ;
typedef  TYPE_3__ zend_object_iterator ;
struct TYPE_10__ {int level; scalar_t__ in_iteration; scalar_t__ endIteration; int /*<<< orphan*/  ce; TYPE_2__* iterators; } ;
typedef  TYPE_4__ spl_recursive_it_object ;
struct TYPE_8__ {TYPE_3__* iterator; } ;
struct TYPE_7__ {scalar_t__ (* valid ) (TYPE_3__*) ;} ;

/* Variables and functions */
 int FAILURE ; 
 scalar_t__ SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(spl_recursive_it_object *object, zval *zthis)
{
	zend_object_iterator      *sub_iter;
	int                       level = object->level;

	if(!object->iterators) {
		return FAILURE;
	}
	while (level >=0) {
		sub_iter = object->iterators[level].iterator;
		if (sub_iter->funcs->valid(sub_iter) == SUCCESS) {
			return SUCCESS;
		}
		level--;
	}
	if (object->endIteration && object->in_iteration) {
		FUNC2(FUNC0(zthis), object->ce, &object->endIteration, "endIteration", NULL);
	}
	object->in_iteration = 0;
	return FAILURE;
}