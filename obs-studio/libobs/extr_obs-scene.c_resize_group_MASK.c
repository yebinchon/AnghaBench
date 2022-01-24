#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct vec2 {float x; float y; } ;
struct TYPE_8__ {scalar_t__ bounds_type; int align; int /*<<< orphan*/  update_group_resize; int /*<<< orphan*/  pos; int /*<<< orphan*/  draw_transform; int /*<<< orphan*/  defer_group_resize; TYPE_2__* source; } ;
typedef  TYPE_3__ obs_sceneitem_t ;
typedef  int /*<<< orphan*/  obs_scene_t ;
struct TYPE_6__ {int /*<<< orphan*/ * data; } ;
struct TYPE_7__ {TYPE_1__ context; } ;

/* Variables and functions */
 int OBS_ALIGN_BOTTOM ; 
 int OBS_ALIGN_LEFT ; 
 int OBS_ALIGN_RIGHT ; 
 int OBS_ALIGN_TOP ; 
 scalar_t__ OBS_BOUNDS_NONE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct vec2*,struct vec2*,struct vec2*) ; 
 int /*<<< orphan*/  FUNC3 (struct vec2*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct vec2*) ; 

__attribute__((used)) static void FUNC6(obs_sceneitem_t *group)
{
	obs_scene_t *scene = group->source->context.data;
	struct vec2 minv;
	struct vec2 maxv;
	struct vec2 scale;

	if (FUNC0(&group->defer_group_resize) > 0)
		return;

	if (!FUNC2(scene, &minv, &maxv, &scale))
		return;

	if (group->bounds_type == OBS_BOUNDS_NONE) {
		struct vec2 new_pos;

		if ((group->align & OBS_ALIGN_LEFT) != 0)
			new_pos.x = minv.x;
		else if ((group->align & OBS_ALIGN_RIGHT) != 0)
			new_pos.x = maxv.x;
		else
			new_pos.x = (maxv.x - minv.x) * 0.5f + minv.x;

		if ((group->align & OBS_ALIGN_TOP) != 0)
			new_pos.y = minv.y;
		else if ((group->align & OBS_ALIGN_BOTTOM) != 0)
			new_pos.y = maxv.y;
		else
			new_pos.y = (maxv.y - minv.y) * 0.5f + minv.y;

		FUNC3(&new_pos, &group->draw_transform);
		FUNC5(&group->pos, &new_pos);
	}

	FUNC1(&group->update_group_resize, false);

	FUNC4(group, false);
}