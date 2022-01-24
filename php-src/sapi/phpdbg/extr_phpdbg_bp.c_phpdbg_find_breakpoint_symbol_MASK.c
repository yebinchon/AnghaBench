#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zend_string ;
struct TYPE_5__ {scalar_t__ function_name; scalar_t__ scope; } ;
typedef  TYPE_1__ zend_op_array ;
struct TYPE_6__ {scalar_t__ type; } ;
typedef  TYPE_2__ zend_function ;
typedef  int /*<<< orphan*/  phpdbg_breakbase_t ;

/* Variables and functions */
 size_t PHPDBG_BREAK_SYM ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ ZEND_USER_FUNCTION ; 
 int /*<<< orphan*/  bp ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (scalar_t__) ; 

__attribute__((used)) static inline phpdbg_breakbase_t *FUNC7(zend_function *fbc) /* {{{ */
{
	zend_op_array *ops;

	if (fbc->type != ZEND_USER_FUNCTION) {
		return NULL;
	}

	ops = (zend_op_array *) fbc;

	if (ops->scope) {
		/* find method breaks here */
		return FUNC2(ops);
	}

	if (ops->function_name) {
		phpdbg_breakbase_t *brake;
		zend_string *fname = FUNC6(ops->function_name);

		brake = FUNC3(&FUNC0(bp)[PHPDBG_BREAK_SYM], fname);

		FUNC5(fname);
		return brake;
	} else {
		return FUNC4(&FUNC0(bp)[PHPDBG_BREAK_SYM], FUNC1("main"));
	}
}