#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct vec2 {int dummy; } ;
struct TYPE_7__ {scalar_t__ bottom; scalar_t__ right; scalar_t__ top; scalar_t__ left; } ;
struct obs_scene_item {float rot; int user_visible; int locked; int id; scalar_t__ scale_filter; int /*<<< orphan*/  private_settings; struct obs_scene_item* next; TYPE_4__* source; scalar_t__ is_group; TYPE_1__ crop; struct vec2 bounds; scalar_t__ bounds_align; scalar_t__ bounds_type; scalar_t__ align; struct vec2 scale; struct vec2 pos; } ;
typedef  struct obs_scene_item obs_sceneitem_t ;
struct TYPE_9__ {struct obs_scene_item* first_item; } ;
typedef  TYPE_3__ obs_scene_t ;
typedef  int /*<<< orphan*/  obs_data_t ;
typedef  int /*<<< orphan*/  obs_data_array_t ;
struct TYPE_8__ {TYPE_3__* data; } ;
struct TYPE_10__ {TYPE_2__ context; } ;

/* Variables and functions */
 scalar_t__ OBS_SCALE_AREA ; 
 scalar_t__ OBS_SCALE_BICUBIC ; 
 scalar_t__ OBS_SCALE_BILINEAR ; 
 scalar_t__ OBS_SCALE_LANCZOS ; 
 scalar_t__ OBS_SCALE_POINT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (struct obs_scene_item*,struct vec2*,struct vec2*,float*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,float) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,struct vec2*) ; 
 char* FUNC12 (TYPE_4__*) ; 

__attribute__((used)) static void FUNC13(obs_data_array_t *array,
			    struct obs_scene_item *item,
			    struct obs_scene_item *backup_group)
{
	obs_data_t *item_data = FUNC4();
	const char *name = FUNC12(item->source);
	const char *scale_filter;
	struct vec2 pos = item->pos;
	struct vec2 scale = item->scale;
	float rot = item->rot;

	if (backup_group) {
		FUNC2(backup_group, &pos, &scale, &rot);
	}

	FUNC10(item_data, "name", name);
	FUNC6(item_data, "visible", item->user_visible);
	FUNC6(item_data, "locked", item->locked);
	FUNC7(item_data, "rot", rot);
	FUNC11(item_data, "pos", &pos);
	FUNC11(item_data, "scale", &scale);
	FUNC8(item_data, "align", (int)item->align);
	FUNC8(item_data, "bounds_type", (int)item->bounds_type);
	FUNC8(item_data, "bounds_align", (int)item->bounds_align);
	FUNC11(item_data, "bounds", &item->bounds);
	FUNC8(item_data, "crop_left", (int)item->crop.left);
	FUNC8(item_data, "crop_top", (int)item->crop.top);
	FUNC8(item_data, "crop_right", (int)item->crop.right);
	FUNC8(item_data, "crop_bottom", (int)item->crop.bottom);
	FUNC8(item_data, "id", item->id);
	FUNC6(item_data, "group_item_backup", !!backup_group);

	if (item->is_group) {
		obs_scene_t *group_scene = item->source->context.data;
		obs_sceneitem_t *group_item;

		/* save group items as part of main scene, but ignored.
		 * causes an automatic ungroup if scene collection file
		 * is loaded in previous versions. */
		FUNC0(group_scene);

		group_item = group_scene->first_item;
		while (group_item) {
			FUNC13(array, group_item, item);
			group_item = group_item->next;
		}

		FUNC1(group_scene);
	}

	if (item->scale_filter == OBS_SCALE_POINT)
		scale_filter = "point";
	else if (item->scale_filter == OBS_SCALE_BILINEAR)
		scale_filter = "bilinear";
	else if (item->scale_filter == OBS_SCALE_BICUBIC)
		scale_filter = "bicubic";
	else if (item->scale_filter == OBS_SCALE_LANCZOS)
		scale_filter = "lanczos";
	else if (item->scale_filter == OBS_SCALE_AREA)
		scale_filter = "area";
	else
		scale_filter = "disable";

	FUNC10(item_data, "scale_filter", scale_filter);

	FUNC9(item_data, "private_settings", item->private_settings);

	FUNC3(array, item_data);
	FUNC5(item_data);
}