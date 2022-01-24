#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {struct TYPE_19__* prev; TYPE_2__* parent; struct TYPE_19__* next; scalar_t__ is_group; } ;
typedef  TYPE_1__ obs_sceneitem_t ;
struct TYPE_20__ {TYPE_1__* first_item; int /*<<< orphan*/  source; } ;
typedef  TYPE_2__ obs_scene_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_1__*) ; 
 TYPE_2__* FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 TYPE_1__* FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

obs_sceneitem_t *FUNC9(obs_scene_t *scene, const char *name,
					obs_sceneitem_t **items, size_t count)
{
	if (!scene)
		return NULL;

	/* don't allow groups or sub-items of other groups */
	for (size_t i = count; i > 0; i--) {
		obs_sceneitem_t *item = items[i - 1];
		if (item->parent != scene || item->is_group)
			return NULL;
	}

	obs_scene_t *sub_scene = FUNC1("group", name);
	obs_sceneitem_t *last_item = items ? items[count - 1] : NULL;

	obs_sceneitem_t *item =
		FUNC5(scene, sub_scene->source, last_item);

	FUNC6(sub_scene);

	if (!items || !count)
		return item;

	/* ------------------------- */

	FUNC3(scene);
	FUNC3(sub_scene);
	sub_scene->first_item = items[0];

	for (size_t i = count; i > 0; i--) {
		size_t idx = i - 1;
		FUNC7(item, items[idx]);
		FUNC2(items[idx]);
	}
	for (size_t i = 0; i < count; i++) {
		size_t idx = i;
		if (idx != (count - 1)) {
			size_t next_idx = idx + 1;
			items[idx]->next = items[next_idx];
			items[next_idx]->prev = items[idx];
		} else {
			items[idx]->next = NULL;
		}
		items[idx]->parent = sub_scene;
		FUNC0(items[idx], item);
	}
	items[0]->prev = NULL;
	FUNC8(item);
	FUNC4(sub_scene);
	FUNC4(scene);

	/* ------------------------- */

	return item;
}