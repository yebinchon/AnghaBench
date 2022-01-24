#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct dstr {int /*<<< orphan*/  array; int /*<<< orphan*/  member_0; } ;
struct TYPE_10__ {int /*<<< orphan*/  toggle_visibility; } ;
typedef  TYPE_2__ obs_sceneitem_t ;
struct TYPE_11__ {int /*<<< orphan*/  source; } ;
typedef  TYPE_3__ obs_scene_t ;
struct TYPE_9__ {char* sceneitem_show; char* sceneitem_hide; } ;
struct TYPE_12__ {TYPE_1__ hotkeys; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dstr*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC2 (struct dstr*,char*,char const*) ; 
 int /*<<< orphan*/  hotkey_hide_sceneitem ; 
 int /*<<< orphan*/  hotkey_show_sceneitem ; 
 TYPE_6__* obs ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,TYPE_2__*) ; 

__attribute__((used)) static void FUNC4(obs_scene_t *scene, obs_sceneitem_t *item,
			 const char *name)
{
	struct dstr show = {0};
	struct dstr hide = {0};
	struct dstr show_desc = {0};
	struct dstr hide_desc = {0};

	FUNC0(&show, "libobs.show_scene_item.%1");
	FUNC2(&show, "%1", name);
	FUNC0(&hide, "libobs.hide_scene_item.%1");
	FUNC2(&hide, "%1", name);

	FUNC0(&show_desc, obs->hotkeys.sceneitem_show);
	FUNC2(&show_desc, "%1", name);
	FUNC0(&hide_desc, obs->hotkeys.sceneitem_hide);
	FUNC2(&hide_desc, "%1", name);

	item->toggle_visibility = FUNC3(
		scene->source, show.array, show_desc.array, hide.array,
		hide_desc.array, hotkey_show_sceneitem, hotkey_hide_sceneitem,
		item, item);

	FUNC1(&show);
	FUNC1(&hide);
	FUNC1(&show_desc);
	FUNC1(&hide_desc);
}