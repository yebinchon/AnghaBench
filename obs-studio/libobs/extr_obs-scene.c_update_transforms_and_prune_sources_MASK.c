#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct obs_scene_item {struct obs_scene_item* next; int /*<<< orphan*/  update_transform; TYPE_6__* source; scalar_t__ is_group; int /*<<< orphan*/  update_group_resize; } ;
struct darray {int dummy; } ;
typedef  struct obs_scene_item obs_sceneitem_t ;
struct TYPE_8__ {struct obs_scene_item* first_item; } ;
typedef  TYPE_2__ obs_scene_t ;
struct TYPE_7__ {TYPE_2__* data; } ;
struct TYPE_9__ {TYPE_1__ context; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,struct darray*,struct obs_scene_item**) ; 
 scalar_t__ FUNC1 (TYPE_6__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct obs_scene_item*) ; 
 int /*<<< orphan*/  FUNC4 (struct obs_scene_item*) ; 
 scalar_t__ FUNC5 (struct obs_scene_item*) ; 
 int /*<<< orphan*/  FUNC6 (struct obs_scene_item*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC9(obs_scene_t *scene,
				    struct darray *remove_items,
				    obs_sceneitem_t *group_sceneitem)
{
	struct obs_scene_item *item = scene->first_item;
	bool rebuild_group =
		group_sceneitem &&
		FUNC2(&group_sceneitem->update_group_resize);

	while (item) {
		if (FUNC1(item->source)) {
			struct obs_scene_item *del_item = item;
			item = item->next;

			FUNC3(del_item);
			FUNC0(sizeof(struct obs_scene_item *),
					 remove_items, &del_item);
			rebuild_group = true;
			continue;
		}

		if (item->is_group) {
			obs_scene_t *group_scene = item->source->context.data;

			FUNC7(group_scene);
			FUNC9(group_scene,
							    remove_items, item);
			FUNC8(group_scene);
		}

		if (FUNC2(&item->update_transform) ||
		    FUNC5(item)) {

			FUNC6(item, true);
			rebuild_group = true;
		}

		item = item->next;
	}

	if (rebuild_group && group_sceneitem)
		FUNC4(group_sceneitem);
}