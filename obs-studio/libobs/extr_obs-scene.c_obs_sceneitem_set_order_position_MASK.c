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
struct obs_scene_item {struct obs_scene_item* next; } ;
struct obs_scene {struct obs_scene_item* first_item; } ;
struct TYPE_6__ {struct obs_scene* parent; } ;
typedef  TYPE_1__ obs_sceneitem_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct obs_scene*,TYPE_1__*,struct obs_scene_item*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct obs_scene*) ; 
 int /*<<< orphan*/  FUNC3 (struct obs_scene*) ; 
 int /*<<< orphan*/  FUNC4 (struct obs_scene*) ; 
 int /*<<< orphan*/  FUNC5 (struct obs_scene*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

void FUNC7(obs_sceneitem_t *item, int position)
{
	if (!item)
		return;

	struct obs_scene *scene = item->parent;
	struct obs_scene_item *next;

	FUNC4(scene);
	FUNC2(scene);

	FUNC1(item);
	next = scene->first_item;

	if (position == 0) {
		FUNC0(scene, item, NULL);
	} else {
		for (int i = position; i > 1; --i) {
			if (next->next == NULL)
				break;
			next = next->next;
		}

		FUNC0(scene, item, next);
	}

	FUNC3(scene);

	FUNC6(item);
	FUNC5(scene);
}