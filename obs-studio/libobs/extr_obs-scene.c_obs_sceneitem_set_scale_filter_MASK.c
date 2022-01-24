#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int scale_filter; int /*<<< orphan*/  update_transform; } ;
typedef  TYPE_1__ obs_sceneitem_t ;
typedef  enum obs_scale_type { ____Placeholder_obs_scale_type } obs_scale_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

void FUNC2(obs_sceneitem_t *item,
				    enum obs_scale_type filter)
{
	if (!FUNC0(item, "obs_sceneitem_set_scale_filter"))
		return;

	item->scale_filter = filter;

	FUNC1(&item->update_transform, true);
}