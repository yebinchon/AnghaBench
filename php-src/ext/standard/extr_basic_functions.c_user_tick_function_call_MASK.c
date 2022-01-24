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
typedef  int /*<<< orphan*/  zval ;
struct TYPE_4__ {int calling; int /*<<< orphan*/ * arguments; scalar_t__ arg_count; } ;
typedef  TYPE_1__ user_tick_function_entry ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  E_WARNING ; 
 scalar_t__ IS_ARRAY ; 
 scalar_t__ IS_OBJECT ; 
 scalar_t__ IS_STRING ; 
 scalar_t__ SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(user_tick_function_entry *tick_fe) /* {{{ */
{
	zval retval;
	zval *function = &tick_fe->arguments[0];

	/* Prevent reentrant calls to the same user ticks function */
	if (! tick_fe->calling) {
		tick_fe->calling = 1;

		if (FUNC5(NULL, NULL,
								function,
								&retval,
								tick_fe->arg_count - 1,
								tick_fe->arguments + 1
								) == SUCCESS) {
			FUNC8(&retval);

		} else {
			zval *obj, *method;

			if (FUNC4(function) == IS_STRING) {
				FUNC6(NULL, E_WARNING, "Unable to call %s() - function does not exist", FUNC3(function));
			} else if (	FUNC4(function) == IS_ARRAY
						&& (obj = FUNC7(FUNC1(function), 0)) != NULL
						&& (method = FUNC7(FUNC1(function), 1)) != NULL
						&& FUNC4(obj) == IS_OBJECT
						&& FUNC4(method) == IS_STRING) {
				FUNC6(NULL, E_WARNING, "Unable to call %s::%s() - function does not exist", FUNC0(FUNC2(obj)->name), FUNC3(method));
			} else {
				FUNC6(NULL, E_WARNING, "Unable to call tick function");
			}
		}

		tick_fe->calling = 0;
	}
}