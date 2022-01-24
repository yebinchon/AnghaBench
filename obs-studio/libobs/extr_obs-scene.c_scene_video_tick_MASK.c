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
struct obs_scene_item {struct obs_scene_item* next; scalar_t__ item_render; } ;
struct obs_scene {struct obs_scene_item* first_item; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (float) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct obs_scene*) ; 
 int /*<<< orphan*/  FUNC3 (struct obs_scene*) ; 

__attribute__((used)) static void FUNC4(void *data, float seconds)
{
	struct obs_scene *scene = data;
	struct obs_scene_item *item;

	FUNC2(scene);
	item = scene->first_item;
	while (item) {
		if (item->item_render)
			FUNC1(item->item_render);
		item = item->next;
	}
	FUNC3(scene);

	FUNC0(seconds);
}