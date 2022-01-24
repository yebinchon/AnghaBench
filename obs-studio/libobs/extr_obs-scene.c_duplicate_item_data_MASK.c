#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct obs_scene_item {int /*<<< orphan*/  private_settings; scalar_t__ item_render; int /*<<< orphan*/  update_transform; int /*<<< orphan*/  crop; int /*<<< orphan*/  toggle_visibility; int /*<<< orphan*/  bounds; int /*<<< orphan*/  bounds_align; int /*<<< orphan*/  bounds_type; int /*<<< orphan*/  draw_transform; int /*<<< orphan*/  box_scale; int /*<<< orphan*/  box_transform; int /*<<< orphan*/  scale_filter; int /*<<< orphan*/  output_scale; int /*<<< orphan*/  last_height; int /*<<< orphan*/  last_width; int /*<<< orphan*/  align; int /*<<< orphan*/  scale; int /*<<< orphan*/  rot; int /*<<< orphan*/  pos; int /*<<< orphan*/  selected; int /*<<< orphan*/  user_visible; struct obs_scene* parent; } ;
struct obs_scene {TYPE_2__* source; } ;
typedef  int /*<<< orphan*/  obs_data_array_t ;
struct TYPE_3__ {int /*<<< orphan*/  private; } ;
struct TYPE_4__ {TYPE_1__ context; } ;

/* Variables and functions */
 int /*<<< orphan*/  GS_RGBA ; 
 int /*<<< orphan*/  GS_ZS_NONE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct obs_scene_item*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct obs_scene_item*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (struct obs_scene_item*,int) ; 

__attribute__((used)) static inline void FUNC11(struct obs_scene_item *dst,
				       struct obs_scene_item *src,
				       bool defer_texture_update,
				       bool duplicate_hotkeys,
				       bool duplicate_private_data)
{
	struct obs_scene *dst_scene = dst->parent;

	if (!src->user_visible)
		FUNC10(dst, false);

	dst->selected = src->selected;
	dst->pos = src->pos;
	dst->rot = src->rot;
	dst->scale = src->scale;
	dst->align = src->align;
	dst->last_width = src->last_width;
	dst->last_height = src->last_height;
	dst->output_scale = src->output_scale;
	dst->scale_filter = src->scale_filter;
	dst->box_transform = src->box_transform;
	dst->box_scale = src->box_scale;
	dst->draw_transform = src->draw_transform;
	dst->bounds_type = src->bounds_type;
	dst->bounds_align = src->bounds_align;
	dst->bounds = src->bounds;

	if (duplicate_hotkeys && !dst_scene->source->context.private) {
		obs_data_array_t *data0 = NULL;
		obs_data_array_t *data1 = NULL;

		FUNC6(src->toggle_visibility, &data0, &data1);
		FUNC5(dst->toggle_visibility, data0, data1);

		FUNC3(data0);
		FUNC3(data1);
	}

	FUNC8(dst, &src->crop);

	if (defer_texture_update) {
		FUNC9(&dst->update_transform, true);
	} else {
		if (!dst->item_render && FUNC1(dst)) {
			FUNC4();
			dst->item_render =
				FUNC0(GS_RGBA, GS_ZS_NONE);
			FUNC7();
		}
	}

	if (duplicate_private_data) {
		FUNC2(dst->private_settings, src->private_settings);
	}
}