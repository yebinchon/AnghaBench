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
struct obs_context_data {int /*<<< orphan*/ * mutex; TYPE_1__** prev_next; TYPE_1__* next; } ;
struct TYPE_2__ {struct TYPE_2__** prev_next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct obs_context_data *context)
{
	if (context && context->mutex) {
		FUNC0(context->mutex);
		if (context->prev_next)
			*context->prev_next = context->next;
		if (context->next)
			context->next->prev_next = context->prev_next;
		FUNC1(context->mutex);

		context->mutex = NULL;
	}
}