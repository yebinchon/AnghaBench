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
struct TYPE_2__ {int /*<<< orphan*/  num; } ;
struct obs_context_data {TYPE_1__ hotkeys; } ;
typedef  int /*<<< orphan*/  obs_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct obs_context_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  enum_save_hotkey ; 
 int /*<<< orphan*/ * FUNC1 () ; 

__attribute__((used)) static inline obs_data_t *FUNC2(struct obs_context_data *context)
{
	if (!context->hotkeys.num)
		return NULL;

	obs_data_t *result = FUNC1();
	FUNC0(context, enum_save_hotkey, result);
	return result;
}