#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_8__ {TYPE_6__* function_handler; } ;
struct TYPE_9__ {TYPE_2__ fcc; int /*<<< orphan*/  callback; } ;
typedef  TYPE_3__ zend_ffi_callback_data ;
struct TYPE_7__ {int fn_flags; } ;
struct TYPE_10__ {TYPE_1__ common; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ZEND_ACC_CLOSURE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(zval *zv) /* {{{ */
{
	zend_ffi_callback_data *callback_data = FUNC2(zv);

	FUNC4(callback_data->callback);
	if (callback_data->fcc.function_handler->common.fn_flags & ZEND_ACC_CLOSURE) {
		FUNC0(FUNC1(callback_data->fcc.function_handler));
	}
	FUNC3(callback_data);
}