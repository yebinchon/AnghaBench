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
struct assignment {struct assignment* variable; struct assignment* next; } ;

/* Variables and functions */
 struct assignment* assignments ; 
 int /*<<< orphan*/  FUNC0 (struct assignment*) ; 

__attribute__((used)) static void
FUNC1(void)
{
	while (assignments)
	{
		struct assignment *old_head = assignments;

		assignments = old_head->next;
		FUNC0(old_head->variable);
		FUNC0(old_head);
	}
}