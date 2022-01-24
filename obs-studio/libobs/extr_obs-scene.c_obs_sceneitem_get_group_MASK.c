#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ is_group; } ;
typedef  TYPE_1__ obs_sceneitem_t ;
typedef  int /*<<< orphan*/  obs_scene_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 

obs_sceneitem_t *FUNC3(obs_scene_t *scene,
					 obs_sceneitem_t *group_subitem)
{
	if (!scene || !group_subitem || group_subitem->is_group)
		return NULL;

	FUNC0(scene);
	obs_sceneitem_t *group =
		FUNC2(scene, group_subitem);
	FUNC1(scene);

	return group;
}