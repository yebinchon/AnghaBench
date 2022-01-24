#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  audio_actions; scalar_t__ source; int /*<<< orphan*/  actions_mutex; int /*<<< orphan*/  toggle_visibility; int /*<<< orphan*/  private_settings; scalar_t__ item_render; } ;
typedef  TYPE_1__ obs_sceneitem_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sceneitem_renamed ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static void FUNC11(obs_sceneitem_t *item)
{
	if (item) {
		if (item->item_render) {
			FUNC4();
			FUNC2(item->item_render);
			FUNC6();
		}
		FUNC3(item->private_settings);
		FUNC5(item->toggle_visibility);
		FUNC9(&item->actions_mutex);
		FUNC10(
			FUNC7(item->source), "rename",
			sceneitem_renamed, item);
		if (item->source)
			FUNC8(item->source);
		FUNC1(item->audio_actions);
		FUNC0(item);
	}
}