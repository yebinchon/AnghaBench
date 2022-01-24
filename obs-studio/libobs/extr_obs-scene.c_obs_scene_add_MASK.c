#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct calldata {int dummy; } ;
typedef  int /*<<< orphan*/  stack ;
typedef  int /*<<< orphan*/  obs_source_t ;
struct TYPE_12__ {TYPE_2__* source; } ;
typedef  TYPE_3__ obs_sceneitem_t ;
typedef  TYPE_3__ obs_scene_t ;
struct TYPE_10__ {int /*<<< orphan*/  signals; } ;
struct TYPE_11__ {TYPE_1__ context; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct calldata*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct calldata*,char*,TYPE_3__*) ; 
 TYPE_3__* FUNC2 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,struct calldata*) ; 

obs_sceneitem_t *FUNC4(obs_scene_t *scene, obs_source_t *source)
{
	obs_sceneitem_t *item = FUNC2(scene, source, NULL);
	struct calldata params;
	uint8_t stack[128];

	FUNC0(&params, stack, sizeof(stack));
	FUNC1(&params, "scene", scene);
	FUNC1(&params, "item", item);
	FUNC3(scene->source->context.signals, "item_add",
			      &params);
	return item;
}