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
struct obs_scene_item {int /*<<< orphan*/  source; int /*<<< orphan*/  active_refs; struct obs_scene_item* next; } ;
struct obs_scene {int /*<<< orphan*/  source; struct obs_scene_item* first_item; } ;
typedef  int /*<<< orphan*/  (* obs_source_enum_proc_t ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct obs_scene*) ; 
 int /*<<< orphan*/  FUNC1 (struct obs_scene*) ; 
 int /*<<< orphan*/  FUNC2 (struct obs_scene_item*) ; 
 int /*<<< orphan*/  FUNC3 (struct obs_scene_item*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(void *data, obs_source_enum_proc_t enum_callback,
			       void *param, bool active)
{
	struct obs_scene *scene = data;
	struct obs_scene_item *item;
	struct obs_scene_item *next;

	FUNC0(scene);
	item = scene->first_item;

	while (item) {
		next = item->next;

		FUNC2(item);
		if (!active || FUNC4(&item->active_refs) > 0)
			enum_callback(scene->source, item->source, param);
		FUNC3(item);

		item = next;
	}

	FUNC1(scene);
}