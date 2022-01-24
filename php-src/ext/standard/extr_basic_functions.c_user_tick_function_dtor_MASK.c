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
struct TYPE_3__ {int arg_count; int /*<<< orphan*/ * arguments; } ;
typedef  TYPE_1__ user_tick_function_entry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(user_tick_function_entry *tick_function_entry) /* {{{ */
{
	int i;

	for (i = 0; i < tick_function_entry->arg_count; i++) {
		FUNC1(&tick_function_entry->arguments[i]);
	}
	FUNC0(tick_function_entry->arguments);
}