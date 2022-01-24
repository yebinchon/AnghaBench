#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  filter_mutex; } ;
typedef  TYPE_1__ obs_source_t ;
typedef  enum obs_order_movement { ____Placeholder_obs_order_movement } obs_order_movement ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(obs_source_t *source, obs_source_t *filter,
				 enum obs_order_movement movement)
{
	bool success;

	if (!FUNC3(source, "obs_source_filter_set_order"))
		return;
	if (!FUNC1(filter, "obs_source_filter_set_order"))
		return;

	FUNC4(&source->filter_mutex);
	success = FUNC0(source, filter, movement);
	FUNC5(&source->filter_mutex);

	if (success)
		FUNC2(source, NULL, "reorder_filters");
}