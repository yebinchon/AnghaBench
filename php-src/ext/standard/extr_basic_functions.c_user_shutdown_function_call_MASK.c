#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_string ;
struct TYPE_3__ {int /*<<< orphan*/ * arguments; scalar_t__ arg_count; } ;
typedef  TYPE_1__ php_shutdown_function_entry ;

/* Variables and functions */
 int /*<<< orphan*/  E_WARNING ; 
 scalar_t__ SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(zval *zv) /* {{{ */
{
    php_shutdown_function_entry *shutdown_function_entry = FUNC1(zv);
	zval retval;

	if (!FUNC5(&shutdown_function_entry->arguments[0], 0, NULL)) {
		zend_string *function_name
			= FUNC4(&shutdown_function_entry->arguments[0]);
		FUNC3(E_WARNING, "(Registered shutdown functions) Unable to call %s() - function does not exist", FUNC0(function_name));
		FUNC6(function_name, 0);
		return 0;
	}

	if (FUNC2(NULL, NULL,
				&shutdown_function_entry->arguments[0],
				&retval,
				shutdown_function_entry->arg_count - 1,
				shutdown_function_entry->arguments + 1) == SUCCESS)
	{
		FUNC7(&retval);
	}
	return 0;
}