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
typedef  void* uint32_t ;
struct obs_scene {int custom_size; void* cy; void* cx; scalar_t__ id_counter; } ;
typedef  int /*<<< orphan*/  obs_data_t ;
typedef  int /*<<< orphan*/  obs_data_array_t ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct obs_scene*) ; 
 int /*<<< orphan*/  FUNC9 (struct obs_scene*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(void *data, obs_data_t *settings)
{
	struct obs_scene *scene = data;
	obs_data_array_t *items = FUNC3(settings, "items");
	size_t count, i;

	FUNC8(scene);

	if (!items)
		return;

	count = FUNC0(items);

	for (i = 0; i < count; i++) {
		obs_data_t *item_data = FUNC1(items, i);
		FUNC9(scene, item_data);
		FUNC7(item_data);
	}

	if (FUNC6(settings, "id_counter"))
		scene->id_counter = FUNC5(settings, "id_counter");

	if (FUNC4(settings, "custom_size")) {
		scene->cx = (uint32_t)FUNC5(settings, "cx");
		scene->cy = (uint32_t)FUNC5(settings, "cy");
		scene->custom_size = true;
	}

	FUNC2(items);
}