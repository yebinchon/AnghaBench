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
struct task_struct {scalar_t__ state; int counter; int priority; struct task_struct* next; } ;

/* Variables and functions */
 scalar_t__ TASK_RUNNING ; 
 struct task_struct* kernel_task ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*) ; 

void FUNC3(void)
{
	FUNC0();
	int c;
	struct task_struct *p, *next;
	while (1) {
		c = -1;
		for (p = kernel_task; p; p = p->next){
			if (p->state == TASK_RUNNING && p->counter > c) {
				c = p->counter;
				next = p;
			}
		}
		if (c) {
			break;
		}
		for (p = kernel_task; p; p = p->next) {
			p->counter = (p->counter >> 1) + p->priority;
		}
	}
	FUNC2(next);
	FUNC1();
}