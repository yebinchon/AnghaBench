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
struct _variable {int /*<<< orphan*/ * next; int /*<<< orphan*/ * assign_hook; int /*<<< orphan*/ * substitute_hook; int /*<<< orphan*/ * value; int /*<<< orphan*/ * name; } ;
typedef  struct _variable* VariableSpace ;

/* Variables and functions */
 struct _variable* FUNC0 (int) ; 

VariableSpace
FUNC1(void)
{
	struct _variable *ptr;

	ptr = FUNC0(sizeof *ptr);
	ptr->name = NULL;
	ptr->value = NULL;
	ptr->substitute_hook = NULL;
	ptr->assign_hook = NULL;
	ptr->next = NULL;

	return ptr;
}