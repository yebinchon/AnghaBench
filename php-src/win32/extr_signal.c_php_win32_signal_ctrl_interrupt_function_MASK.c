#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_execute_data ;

/* Variables and functions */
 scalar_t__ IS_UNDEF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ctrl_evt ; 
 int /*<<< orphan*/  ctrl_handler ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(zend_execute_data *execute_data)
{/*{{{*/
	if (IS_UNDEF != FUNC1(ctrl_handler)) {
		zval retval, params[1];

		FUNC0(&params[0], ctrl_evt);

		/* If the function returns, */
		FUNC2(NULL, NULL, &ctrl_handler, &retval, 1, params);
		FUNC4(&retval);
	}

	if (&orig_interrupt_function) {
		FUNC3(execute_data);
	}
}