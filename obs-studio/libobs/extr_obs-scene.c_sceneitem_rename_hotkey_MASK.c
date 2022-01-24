#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct dstr {int /*<<< orphan*/  array; int /*<<< orphan*/  member_0; } ;
struct TYPE_6__ {int /*<<< orphan*/  toggle_visibility; } ;
typedef  TYPE_2__ obs_sceneitem_t ;
struct TYPE_5__ {char* sceneitem_show; char* sceneitem_hide; } ;
struct TYPE_7__ {TYPE_1__ hotkeys; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dstr*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC2 (struct dstr*,char*,char const*) ; 
 TYPE_4__* obs ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(const obs_sceneitem_t *scene_item,
				    const char *new_name)
{
	struct dstr show = {0};
	struct dstr hide = {0};
	struct dstr show_desc = {0};
	struct dstr hide_desc = {0};

	FUNC0(&show, "libobs.show_scene_item.%1");
	FUNC2(&show, "%1", new_name);
	FUNC0(&hide, "libobs.hide_scene_item.%1");
	FUNC2(&hide, "%1", new_name);

	FUNC4(scene_item->toggle_visibility, show.array,
				  hide.array);

	FUNC0(&show_desc, obs->hotkeys.sceneitem_show);
	FUNC2(&show_desc, "%1", new_name);
	FUNC0(&hide_desc, obs->hotkeys.sceneitem_hide);
	FUNC2(&hide_desc, "%1", new_name);

	FUNC3(scene_item->toggle_visibility,
					 show_desc.array, hide_desc.array);

	FUNC1(&show);
	FUNC1(&hide);
	FUNC1(&show_desc);
	FUNC1(&hide_desc);
}