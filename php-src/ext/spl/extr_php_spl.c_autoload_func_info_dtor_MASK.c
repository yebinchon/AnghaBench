#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_6__ {int /*<<< orphan*/  closure; TYPE_3__* func_ptr; int /*<<< orphan*/  obj; } ;
typedef  TYPE_2__ autoload_func_info ;
struct TYPE_5__ {int fn_flags; int /*<<< orphan*/  function_name; } ;
struct TYPE_7__ {TYPE_1__ common; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int ZEND_ACC_CALL_VIA_TRAMPOLINE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(zval *element)
{
	autoload_func_info *alfi = (autoload_func_info*)FUNC2(element);
	if (!FUNC1(alfi->obj)) {
		FUNC6(&alfi->obj);
	}
	if (alfi->func_ptr &&
		FUNC0(alfi->func_ptr->common.fn_flags & ZEND_ACC_CALL_VIA_TRAMPOLINE)) {
		FUNC5(alfi->func_ptr->common.function_name, 0);
		FUNC4(alfi->func_ptr);
	}
	if (!FUNC1(alfi->closure)) {
		FUNC6(&alfi->closure);
	}
	FUNC3(alfi);
}