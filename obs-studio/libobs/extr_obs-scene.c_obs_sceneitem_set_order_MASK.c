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
struct obs_scene_item {struct obs_scene_item* next; struct obs_scene_item* prev; } ;
struct obs_scene {int dummy; } ;
struct TYPE_6__ {struct obs_scene_item* prev; struct obs_scene_item* next; struct obs_scene* parent; } ;
typedef  TYPE_1__ obs_sceneitem_t ;
typedef  enum obs_order_movement { ____Placeholder_obs_order_movement } obs_order_movement ;

/* Variables and functions */
 int OBS_ORDER_MOVE_BOTTOM ; 
 int OBS_ORDER_MOVE_DOWN ; 
 int OBS_ORDER_MOVE_TOP ; 
 int OBS_ORDER_MOVE_UP ; 
 int /*<<< orphan*/  FUNC0 (struct obs_scene*,TYPE_1__*,struct obs_scene_item*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct obs_scene*) ; 
 int /*<<< orphan*/  FUNC3 (struct obs_scene*) ; 
 int /*<<< orphan*/  FUNC4 (struct obs_scene*) ; 
 int /*<<< orphan*/  FUNC5 (struct obs_scene*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

void FUNC7(obs_sceneitem_t *item,
			     enum obs_order_movement movement)
{
	if (!item)
		return;

	struct obs_scene_item *next, *prev;
	struct obs_scene *scene = item->parent;

	FUNC4(scene);
	FUNC2(scene);

	next = item->next;
	prev = item->prev;

	FUNC1(item);

	if (movement == OBS_ORDER_MOVE_DOWN) {
		FUNC0(scene, item, prev ? prev->prev : NULL);

	} else if (movement == OBS_ORDER_MOVE_UP) {
		FUNC0(scene, item, next ? next : prev);

	} else if (movement == OBS_ORDER_MOVE_TOP) {
		struct obs_scene_item *last = next;
		if (!last) {
			last = prev;
		} else {
			while (last->next)
				last = last->next;
		}

		FUNC0(scene, item, last);

	} else if (movement == OBS_ORDER_MOVE_BOTTOM) {
		FUNC0(scene, item, NULL);
	}

	FUNC3(scene);

	FUNC6(item);
	FUNC5(scene);
}