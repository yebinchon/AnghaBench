#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zend_string ;
struct TYPE_5__ {int /*<<< orphan*/  function_name; TYPE_1__* scope; } ;
typedef  TYPE_2__ zend_op_array ;
typedef  int /*<<< orphan*/  phpdbg_breakbase_t ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  HashTable ;

/* Variables and functions */
 size_t PHPDBG_BREAK_METHOD ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bp ; 
 void* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline phpdbg_breakbase_t *FUNC4(zend_op_array *ops) /* {{{ */
{
	HashTable *class_table;
	phpdbg_breakbase_t *brake = NULL;
	zend_string *class_lcname = FUNC3(ops->scope->name);

	if ((class_table = FUNC1(&FUNC0(bp)[PHPDBG_BREAK_METHOD], class_lcname))) {
		zend_string *lcname = FUNC3(ops->function_name);

		brake = FUNC1(class_table, lcname);

		FUNC2(lcname);
	}

	FUNC2(class_lcname);
	return brake;
}