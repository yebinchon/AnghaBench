#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_8__ {scalar_t__ type; int fn_flags; } ;
typedef  TYPE_1__ zend_op_array ;
typedef  int /*<<< orphan*/  zend_internal_function ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int ZEND_ACC_ARENA_ALLOCATED ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ ZEND_INTERNAL_FUNCTION ; 
 scalar_t__ ZEND_USER_FUNCTION ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  is_immutable_class ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 TYPE_1__* FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_1__*) ; 

__attribute__((used)) static void FUNC8(zval *zv)
{
	zend_op_array *op_array = FUNC4(zv);
	zend_op_array *old_op_array;

	if (op_array->type != ZEND_USER_FUNCTION) {
		FUNC3(op_array->type == ZEND_INTERNAL_FUNCTION);
		if (op_array->fn_flags & ZEND_ACC_ARENA_ALLOCATED) {
			old_op_array = FUNC6(op_array);
			if (!old_op_array) {
				FUNC1(sizeof(zend_internal_function));
				FUNC7(op_array, FUNC4(zv));
			}
		}
		return;
	}

	old_op_array = FUNC6(op_array);
	if (!old_op_array) {
		FUNC1(sizeof(zend_op_array));
		FUNC5(FUNC4(zv));
		FUNC7(op_array, FUNC4(zv));
		if (!FUNC2(is_immutable_class)) {
			FUNC0(sizeof(void*));
		}
	}
}