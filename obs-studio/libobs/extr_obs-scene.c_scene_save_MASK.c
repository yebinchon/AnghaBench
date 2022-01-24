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
struct obs_scene_item {struct obs_scene_item* next; } ;
struct obs_scene {int /*<<< orphan*/  cy; int /*<<< orphan*/  cx; scalar_t__ custom_size; int /*<<< orphan*/  id_counter; struct obs_scene_item* first_item; } ;
typedef  int /*<<< orphan*/  obs_data_t ;
typedef  int /*<<< orphan*/  obs_data_array_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct obs_scene*) ; 
 int /*<<< orphan*/  FUNC1 (struct obs_scene*) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct obs_scene_item*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(void *data, obs_data_t *settings)
{
	struct obs_scene *scene = data;
	obs_data_array_t *array = FUNC2();
	struct obs_scene_item *item;

	FUNC0(scene);

	item = scene->first_item;
	while (item) {
		FUNC7(array, item, NULL);
		item = item->next;
	}

	FUNC6(settings, "id_counter", scene->id_counter);
	FUNC5(settings, "custom_size", scene->custom_size);
	if (scene->custom_size) {
		FUNC6(settings, "cx", scene->cx);
		FUNC6(settings, "cy", scene->cy);
	}

	FUNC1(scene);

	FUNC4(settings, "items", array);
	FUNC3(array);
}