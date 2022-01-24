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
struct log_context {void* context; char* str; int print_prefix; } ;
struct TYPE_6__ {size_t num; struct log_context** array; } ;
struct TYPE_5__ {size_t num; struct log_context** array; } ;

/* Variables and functions */
 TYPE_1__ active_log_contexts ; 
 struct log_context* FUNC0 (int) ; 
 TYPE_2__ cached_log_contexts ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__,struct log_context**) ; 
 int /*<<< orphan*/  log_contexts_mutex ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct log_context *FUNC5(void *context)
{
	FUNC3(&log_contexts_mutex);
	for (size_t i = 0; i < active_log_contexts.num; i++) {
		if (context == active_log_contexts.array[i]->context) {
			FUNC4(&log_contexts_mutex);
			return active_log_contexts.array[i];
		}
	}

	struct log_context *new_log_context = NULL;

	size_t cnt = cached_log_contexts.num;
	if (!!cnt) {
		new_log_context = cached_log_contexts.array[cnt - 1];
		FUNC1(cached_log_contexts);
	}

	if (!new_log_context)
		new_log_context = FUNC0(sizeof(struct log_context));

	new_log_context->context = context;
	new_log_context->str[0] = '\0';
	new_log_context->print_prefix = 1;

	FUNC2(active_log_contexts, &new_log_context);

	FUNC4(&log_contexts_mutex);

	return new_log_context;
}