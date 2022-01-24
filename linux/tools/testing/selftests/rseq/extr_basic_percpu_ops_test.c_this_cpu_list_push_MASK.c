#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct percpu_list_node {struct percpu_list_node* next; } ;
struct percpu_list {TYPE_1__* c; } ;
struct TYPE_2__ {int /*<<< orphan*/  head; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (intptr_t*,intptr_t,intptr_t,int) ; 
 int FUNC2 () ; 
 scalar_t__ FUNC3 (int) ; 

void FUNC4(struct percpu_list *list,
			struct percpu_list_node *node,
			int *_cpu)
{
	int cpu;

	for (;;) {
		intptr_t *targetptr, newval, expect;
		int ret;

		cpu = FUNC2();
		/* Load list->c[cpu].head with single-copy atomicity. */
		expect = (intptr_t)FUNC0(list->c[cpu].head);
		newval = (intptr_t)node;
		targetptr = (intptr_t *)&list->c[cpu].head;
		node->next = (struct percpu_list_node *)expect;
		ret = FUNC1(targetptr, expect, newval, cpu);
		if (FUNC3(!ret))
			break;
		/* Retry if comparison fails or rseq aborts. */
	}
	if (_cpu)
		*_cpu = cpu;
}