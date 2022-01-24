#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint32_t ;
struct TYPE_9__ {void* bottom; void* right; void* top; void* left; } ;
struct obs_scene_item {int is_group; float rot; int bounds_type; int /*<<< orphan*/ * item_render; int /*<<< orphan*/  scale_filter; TYPE_2__ crop; int /*<<< orphan*/  bounds; void* bounds_align; scalar_t__ private_settings; int /*<<< orphan*/  scale; int /*<<< orphan*/  pos; void* align; scalar_t__ id; } ;
struct obs_scene {int /*<<< orphan*/  source; } ;
struct TYPE_8__ {scalar_t__ id; } ;
struct TYPE_10__ {TYPE_1__ info; } ;
typedef  TYPE_3__ obs_source_t ;
typedef  int /*<<< orphan*/  obs_data_t ;
typedef  enum obs_bounds_type { ____Placeholder_obs_bounds_type } obs_bounds_type ;
struct TYPE_11__ {scalar_t__ id; } ;

/* Variables and functions */
 int /*<<< orphan*/  GS_RGBA ; 
 int /*<<< orphan*/  GS_ZS_NONE ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int OBS_ALIGN_LEFT ; 
 int OBS_ALIGN_TOP ; 
 int /*<<< orphan*/  OBS_SCALE_AREA ; 
 int /*<<< orphan*/  OBS_SCALE_BICUBIC ; 
 int /*<<< orphan*/  OBS_SCALE_BILINEAR ; 
 int /*<<< orphan*/  OBS_SCALE_DISABLE ; 
 int /*<<< orphan*/  OBS_SCALE_LANCZOS ; 
 int /*<<< orphan*/  OBS_SCALE_POINT ; 
 scalar_t__ FUNC0 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 TYPE_7__ group_info ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct obs_scene_item*) ; 
 scalar_t__ FUNC5 () ; 
 int FUNC6 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 TYPE_3__* FUNC16 (char const*) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 struct obs_scene_item* FUNC18 (struct obs_scene*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC19 (struct obs_scene_item*,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC22 (struct obs_scene_item*,int) ; 
 int /*<<< orphan*/  FUNC23 (struct obs_scene_item*,int) ; 

__attribute__((used)) static void FUNC24(struct obs_scene *scene, obs_data_t *item_data)
{
	const char *name = FUNC10(item_data, "name");
	obs_source_t *source;
	const char *scale_filter_str;
	struct obs_scene_item *item;
	bool visible;
	bool lock;

	if (FUNC6(item_data, "group_item_backup"))
		return;

	source = FUNC16(name);
	if (!source) {
		FUNC1(LOG_WARNING,
		     "[scene_load_item] Source %s not "
		     "found!",
		     name);
		return;
	}

	item = FUNC18(scene, source);
	if (!item) {
		FUNC1(LOG_WARNING,
		     "[scene_load_item] Could not add source '%s' "
		     "to scene '%s'!",
		     name, FUNC20(scene->source));

		FUNC21(source);
		return;
	}

	item->is_group = source->info.id == group_info.id;

	FUNC14(item_data, "align",
				 OBS_ALIGN_TOP | OBS_ALIGN_LEFT);

	if (FUNC12(item_data, "id"))
		item->id = FUNC8(item_data, "id");

	item->rot = (float)FUNC7(item_data, "rot");
	item->align = (uint32_t)FUNC8(item_data, "align");
	visible = FUNC6(item_data, "visible");
	lock = FUNC6(item_data, "locked");
	FUNC11(item_data, "pos", &item->pos);
	FUNC11(item_data, "scale", &item->scale);

	FUNC13(item->private_settings);
	item->private_settings =
		FUNC9(item_data, "private_settings");
	if (!item->private_settings)
		item->private_settings = FUNC5();

	FUNC22(item, visible);
	FUNC19(item, lock);

	item->bounds_type = (enum obs_bounds_type)FUNC8(
		item_data, "bounds_type");
	item->bounds_align =
		(uint32_t)FUNC8(item_data, "bounds_align");
	FUNC11(item_data, "bounds", &item->bounds);

	item->crop.left = (uint32_t)FUNC8(item_data, "crop_left");
	item->crop.top = (uint32_t)FUNC8(item_data, "crop_top");
	item->crop.right = (uint32_t)FUNC8(item_data, "crop_right");
	item->crop.bottom =
		(uint32_t)FUNC8(item_data, "crop_bottom");

	scale_filter_str = FUNC10(item_data, "scale_filter");
	item->scale_filter = OBS_SCALE_DISABLE;

	if (scale_filter_str) {
		if (FUNC0(scale_filter_str, "point") == 0)
			item->scale_filter = OBS_SCALE_POINT;
		else if (FUNC0(scale_filter_str, "bilinear") == 0)
			item->scale_filter = OBS_SCALE_BILINEAR;
		else if (FUNC0(scale_filter_str, "bicubic") == 0)
			item->scale_filter = OBS_SCALE_BICUBIC;
		else if (FUNC0(scale_filter_str, "lanczos") == 0)
			item->scale_filter = OBS_SCALE_LANCZOS;
		else if (FUNC0(scale_filter_str, "area") == 0)
			item->scale_filter = OBS_SCALE_AREA;
	}

	if (item->item_render && !FUNC4(item)) {
		FUNC15();
		FUNC3(item->item_render);
		item->item_render = NULL;
		FUNC17();

	} else if (!item->item_render && FUNC4(item)) {
		FUNC15();
		item->item_render = FUNC2(GS_RGBA, GS_ZS_NONE);
		FUNC17();
	}

	FUNC21(source);

	FUNC23(item, false);
}