#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct vec2 {float member_0; float member_1; } ;
struct TYPE_5__ {float x; float y; } ;
struct obs_scene_item {int scale_filter; TYPE_2__ output_scale; int /*<<< orphan*/  item_render; } ;
typedef  int /*<<< orphan*/  gs_texture_t ;
typedef  int /*<<< orphan*/  gs_eparam_t ;
typedef  int /*<<< orphan*/  gs_effect_t ;
typedef  enum obs_scale_type { ____Placeholder_obs_scale_type } obs_scale_type ;
struct TYPE_4__ {int /*<<< orphan*/ * area_effect; int /*<<< orphan*/ * lanczos_effect; int /*<<< orphan*/ * bicubic_effect; int /*<<< orphan*/ * bilinear_lowres_effect; int /*<<< orphan*/  point_sampler; int /*<<< orphan*/ * default_effect; } ;
struct TYPE_6__ {TYPE_1__ video; } ;

/* Variables and functions */
 int /*<<< orphan*/  EPSILON ; 
 int /*<<< orphan*/  GS_BLEND_INVSRCALPHA ; 
 int /*<<< orphan*/  GS_BLEND_ONE ; 
 int /*<<< orphan*/  GS_DEBUG_COLOR_ITEM_TEXTURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int OBS_SCALE_AREA ; 
 int OBS_SCALE_BICUBIC ; 
 int OBS_SCALE_DISABLE ; 
 int OBS_SCALE_LANCZOS ; 
 int OBS_SCALE_POINT ; 
 int /*<<< orphan*/  FUNC2 (float,float,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct vec2*) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 TYPE_3__* obs ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(struct obs_scene_item *item)
{
	gs_texture_t *tex = FUNC10(item->item_render);
	if (!tex) {
		return;
	}

	FUNC0(GS_DEBUG_COLOR_ITEM_TEXTURE,
			      "render_item_texture");

	gs_effect_t *effect = obs->video.default_effect;
	enum obs_scale_type type = item->scale_filter;
	uint32_t cx = FUNC12(tex);
	uint32_t cy = FUNC11(tex);
	const char *tech = "Draw";

	if (type != OBS_SCALE_DISABLE) {
		if (type == OBS_SCALE_POINT) {
			gs_eparam_t *image =
				FUNC6(effect, "image");
			FUNC8(image,
						   obs->video.point_sampler);

		} else if (!FUNC2(item->output_scale.x, 1.0f, EPSILON) ||
			   !FUNC2(item->output_scale.y, 1.0f, EPSILON)) {
			gs_eparam_t *scale_param;
			gs_eparam_t *scale_i_param;

			if (item->output_scale.x < 0.5f ||
			    item->output_scale.y < 0.5f) {
				effect = obs->video.bilinear_lowres_effect;
			} else if (type == OBS_SCALE_BICUBIC) {
				effect = obs->video.bicubic_effect;
			} else if (type == OBS_SCALE_LANCZOS) {
				effect = obs->video.lanczos_effect;
			} else if (type == OBS_SCALE_AREA) {
				effect = obs->video.area_effect;
				if ((item->output_scale.x >= 1.0f) &&
				    (item->output_scale.y >= 1.0f))
					tech = "DrawUpscale";
			}

			scale_param = FUNC6(
				effect, "base_dimension");
			if (scale_param) {
				struct vec2 base_res = {(float)cx, (float)cy};

				FUNC9(scale_param, &base_res);
			}

			scale_i_param = FUNC6(
				effect, "base_dimension_i");
			if (scale_i_param) {
				struct vec2 base_res_i = {1.0f / (float)cx,
							  1.0f / (float)cy};

				FUNC9(scale_i_param, &base_res_i);
			}
		}
	}

	FUNC5();
	FUNC3(GS_BLEND_ONE, GS_BLEND_INVSRCALPHA);

	while (FUNC7(effect, tech))
		FUNC13(tex, 0, 0, 0, 0, 0);

	FUNC4();

	FUNC1();
}