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
struct obs_context_data {int /*<<< orphan*/  rename_cache_mutex; int /*<<< orphan*/  private; scalar_t__ name; int /*<<< orphan*/  rename_cache; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct obs_context_data *context,
			      const char *name)
{
	FUNC2(&context->rename_cache_mutex);

	if (context->name)
		FUNC0(context->rename_cache, &context->name);
	context->name = FUNC1(name, context->private);

	FUNC3(&context->rename_cache_mutex);
}