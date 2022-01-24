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
struct obs_context_data {int private; int type; void* hotkey_data; void* settings; int /*<<< orphan*/  name; int /*<<< orphan*/  procs; int /*<<< orphan*/  signals; int /*<<< orphan*/  rename_cache_mutex; } ;
typedef  int /*<<< orphan*/  obs_data_t ;
typedef  enum obs_obj_type { ____Placeholder_obs_obj_type } obs_obj_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct obs_context_data*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct obs_context_data*,int /*<<< orphan*/ ,int) ; 
 void* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static inline bool FUNC8(struct obs_context_data *context,
					      enum obs_obj_type type,
					      obs_data_t *settings,
					      const char *name,
					      obs_data_t *hotkey_data,
					      bool private)
{
	FUNC0(context);
	FUNC2(context, 0, sizeof(*context));
	context->private = private;
	context->type = type;

	FUNC6(&context->rename_cache_mutex);
	if (FUNC5(&context->rename_cache_mutex, NULL) < 0)
		return false;

	context->signals = FUNC7();
	if (!context->signals)
		return false;

	context->procs = FUNC4();
	if (!context->procs)
		return false;

	context->name = FUNC1(name, private);
	context->settings = FUNC3(settings);
	context->hotkey_data = FUNC3(hotkey_data);
	return true;
}