#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int removed; TYPE_2__* parent; } ;
typedef  TYPE_1__ obs_sceneitem_t ;
struct TYPE_11__ {int /*<<< orphan*/ * source; } ;
typedef  TYPE_2__ obs_scene_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

void FUNC7(obs_sceneitem_t *item)
{
	obs_scene_t *scene;

	if (!item)
		return;

	scene = item->parent;

	FUNC2(scene);

	if (item->removed) {
		if (scene)
			FUNC3(scene);
		return;
	}

	item->removed = true;

	FUNC0(scene != NULL);
	FUNC0(scene->source != NULL);

	FUNC5(item, false);

	FUNC6(item);
	FUNC1(item);

	FUNC3(scene);

	FUNC4(item);
}