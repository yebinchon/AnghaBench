#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_5__ {int arg_count; struct TYPE_5__* arguments; } ;
typedef  TYPE_1__ php_shutdown_function_entry ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

void FUNC3(zval *zv) /* {{{ */
{
	int i;
	php_shutdown_function_entry *shutdown_function_entry = FUNC0(zv);

	for (i = 0; i < shutdown_function_entry->arg_count; i++) {
		FUNC2(&shutdown_function_entry->arguments[i]);
	}
	FUNC1(shutdown_function_entry->arguments);
	FUNC1(shutdown_function_entry);
}