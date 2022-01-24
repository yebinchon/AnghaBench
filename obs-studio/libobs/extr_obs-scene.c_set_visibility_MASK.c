#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct obs_scene_item {int visible; int user_visible; int /*<<< orphan*/  actions_mutex; int /*<<< orphan*/  active_refs; int /*<<< orphan*/  source; TYPE_1__* parent; int /*<<< orphan*/  audio_actions; } ;
struct TYPE_2__ {int /*<<< orphan*/  source; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct obs_scene_item *item, bool vis)
{
	FUNC5(&item->actions_mutex);

	FUNC0(item->audio_actions, 0);

	if (FUNC3(&item->active_refs) > 0) {
		if (!vis)
			FUNC2(item->parent->source,
						       item->source);
	} else if (vis) {
		FUNC1(item->parent->source, item->source);
	}

	FUNC4(&item->active_refs, vis ? 1 : 0);
	item->visible = vis;
	item->user_visible = vis;

	FUNC6(&item->actions_mutex);
}