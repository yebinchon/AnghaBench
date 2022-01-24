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
typedef  scalar_t__ uint32_t ;
struct vec2 {int dummy; } ;
struct TYPE_2__ {scalar_t__ output_format; } ;
struct obs_core_video {scalar_t__ base_width; scalar_t__ base_height; int /*<<< orphan*/ * default_effect; TYPE_1__ ovi; int /*<<< orphan*/ * output_texture; int /*<<< orphan*/ * render_texture; } ;
typedef  int /*<<< orphan*/  gs_texture_t ;
typedef  int /*<<< orphan*/  gs_technique_t ;
typedef  int /*<<< orphan*/  gs_eparam_t ;
typedef  int /*<<< orphan*/  gs_effect_t ;

/* Variables and functions */
 scalar_t__ VIDEO_FORMAT_RGBA ; 
 int /*<<< orphan*/ * FUNC0 (struct obs_core_video*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct vec2*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  render_output_texture_name ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (struct vec2*,float,float) ; 

__attribute__((used)) static inline gs_texture_t *FUNC18(struct obs_core_video *video)
{
	gs_texture_t *texture = video->render_texture;
	gs_texture_t *target = video->output_texture;
	uint32_t width = FUNC13(target);
	uint32_t height = FUNC12(target);

	gs_effect_t *effect = FUNC0(video, width, height);
	gs_technique_t *tech;

	if (video->ovi.output_format == VIDEO_FORMAT_RGBA) {
		tech = FUNC3(effect, "DrawAlphaDivide");
	} else {
		if ((effect == video->default_effect) &&
		    (width == video->base_width) &&
		    (height == video->base_height))
			return texture;

		tech = FUNC3(effect, "Draw");
	}

	FUNC15(render_output_texture_name);

	gs_eparam_t *image = FUNC2(effect, "image");
	gs_eparam_t *bres =
		FUNC2(effect, "base_dimension");
	gs_eparam_t *bres_i =
		FUNC2(effect, "base_dimension_i");
	size_t passes, i;

	FUNC7(target, NULL);
	FUNC16(width, height);

	if (bres) {
		struct vec2 base;
		FUNC17(&base, (float)video->base_width,
			 (float)video->base_height);
		FUNC5(bres, &base);
	}

	if (bres_i) {
		struct vec2 base_i;
		FUNC17(&base_i, 1.0f / (float)video->base_width,
			 1.0f / (float)video->base_height);
		FUNC5(bres_i, &base_i);
	}

	FUNC4(image, texture);

	FUNC6(false);
	passes = FUNC8(tech);
	for (i = 0; i < passes; i++) {
		FUNC9(tech, i);
		FUNC1(texture, 0, width, height);
		FUNC11(tech);
	}
	FUNC10(tech);
	FUNC6(true);

	FUNC14(render_output_texture_name);

	return target;
}