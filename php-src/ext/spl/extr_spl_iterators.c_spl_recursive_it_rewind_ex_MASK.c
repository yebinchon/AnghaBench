#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_17__ {TYPE_2__* funcs; } ;
typedef  TYPE_3__ zend_object_iterator ;
typedef  int /*<<< orphan*/  spl_sub_iterator ;
struct TYPE_18__ {int level; int in_iteration; TYPE_6__* beginIteration; int /*<<< orphan*/  ce; TYPE_10__* iterators; TYPE_6__* endChildren; } ;
typedef  TYPE_4__ spl_recursive_it_object ;
struct TYPE_15__ {scalar_t__ scope; } ;
struct TYPE_19__ {TYPE_1__ common; } ;
struct TYPE_16__ {int /*<<< orphan*/  (* rewind ) (TYPE_3__*) ;} ;
struct TYPE_14__ {TYPE_3__* iterator; int /*<<< orphan*/  state; int /*<<< orphan*/  zobject; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RS_START ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_10__* FUNC3 (TYPE_10__*,int) ; 
 int /*<<< orphan*/  exception ; 
 scalar_t__ spl_ce_RecursiveIteratorIterator ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_6__**,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(spl_recursive_it_object *object, zval *zthis)
{
	zend_object_iterator *sub_iter;

	FUNC1(sub_iter, object);

	while (object->level) {
		sub_iter = object->iterators[object->level].iterator;
		FUNC7(sub_iter);
		FUNC8(&object->iterators[object->level--].zobject);
		if (!FUNC0(exception) && (!object->endChildren || object->endChildren->common.scope != spl_ce_RecursiveIteratorIterator)) {
			FUNC6(FUNC2(zthis), object->ce, &object->endChildren, "endchildren", NULL);
		}
	}
	object->iterators = FUNC3(object->iterators, sizeof(spl_sub_iterator));
	object->iterators[0].state = RS_START;
	sub_iter = object->iterators[0].iterator;
	if (sub_iter->funcs->rewind) {
		sub_iter->funcs->rewind(sub_iter);
	}
	if (!FUNC0(exception) && object->beginIteration && !object->in_iteration) {
		FUNC6(FUNC2(zthis), object->ce, &object->beginIteration, "beginIteration", NULL);
	}
	object->in_iteration = 1;
	FUNC4(object, zthis);
}