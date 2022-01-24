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
struct TYPE_2__ {size_t num; int /*<<< orphan*/ * array; } ;
struct obs_context_data {TYPE_1__ rename_cache; int /*<<< orphan*/  name; int /*<<< orphan*/  rename_cache_mutex; int /*<<< orphan*/  settings; int /*<<< orphan*/  procs; int /*<<< orphan*/  signals; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC2 (struct obs_context_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct obs_context_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct obs_context_data*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

void FUNC9(struct obs_context_data *context)
{
	FUNC5(context);
	FUNC8(context->signals);
	FUNC6(context->procs);
	FUNC4(context->settings);
	FUNC3(context);
	FUNC7(&context->rename_cache_mutex);
	FUNC0(context->name);

	for (size_t i = 0; i < context->rename_cache.num; i++)
		FUNC0(context->rename_cache.array[i]);
	FUNC1(context->rename_cache);

	FUNC2(context, 0, sizeof(*context));
}