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
struct variable {struct variable* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct variable*) ; 

__attribute__((used)) static void
FUNC1(struct variable *var)
{
	struct variable *var_next;

	while (var)
	{
		var_next = var->next;
		FUNC0(var);
		var = var_next;
	}
}