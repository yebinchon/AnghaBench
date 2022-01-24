#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_5__ {scalar_t__ type; } ;
typedef  TYPE_1__ zend_op_array ;
struct TYPE_6__ {scalar_t__ corrupted; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ ZEND_USER_FUNCTION ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current_persistent_script ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC6(zval *zv)
{
	zend_op_array *op_array = FUNC4(zv);

	FUNC3(op_array->type == ZEND_USER_FUNCTION);
	FUNC1(sizeof(zend_op_array));
	FUNC5(FUNC4(zv));
	if (FUNC2(current_persistent_script)->corrupted) {
		FUNC0(sizeof(void*));
	}
}