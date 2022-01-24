#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct vec2 {float member_0; float member_1; } ;
struct TYPE_6__ {scalar_t__ deinterlace_frame_ts; scalar_t__ deinterlace_offset; scalar_t__ deinterlace_half_duration; scalar_t__ async_height; scalar_t__ async_width; scalar_t__ async_flip; int /*<<< orphan*/  deinterlace_top_first; int /*<<< orphan*/ ** async_prev_textures; scalar_t__ async_prev_texrender; int /*<<< orphan*/ ** async_textures; scalar_t__ async_texrender; int /*<<< orphan*/ * deinterlace_effect; } ;
typedef  TYPE_2__ obs_source_t ;
typedef  int /*<<< orphan*/  gs_texture_t ;
typedef  int /*<<< orphan*/  gs_eparam_t ;
typedef  int /*<<< orphan*/  gs_effect_t ;
struct TYPE_5__ {scalar_t__ video_time; } ;
struct TYPE_7__ {TYPE_1__ video; } ;

/* Variables and functions */
 int /*<<< orphan*/  GS_FLIP_V ; 
 scalar_t__ TWOX_TOLERANCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct vec2*) ; 
 int /*<<< orphan*/ * FUNC7 (scalar_t__) ; 
 TYPE_3__* obs ; 

void FUNC8(obs_source_t *s)
{
	gs_effect_t *effect = s->deinterlace_effect;

	uint64_t frame2_ts;
	gs_eparam_t *image = FUNC1(effect, "image");
	gs_eparam_t *prev =
		FUNC1(effect, "previous_image");
	gs_eparam_t *field = FUNC1(effect, "field_order");
	gs_eparam_t *frame2 = FUNC1(effect, "frame2");
	gs_eparam_t *dimensions =
		FUNC1(effect, "dimensions");
	struct vec2 size = {(float)s->async_width, (float)s->async_height};

	gs_texture_t *cur_tex =
		s->async_texrender
			? FUNC7(s->async_texrender)
			: s->async_textures[0];
	gs_texture_t *prev_tex =
		s->async_prev_texrender
			? FUNC7(s->async_prev_texrender)
			: s->async_prev_textures[0];

	if (!cur_tex || !prev_tex || !s->async_width || !s->async_height)
		return;

	FUNC5(image, cur_tex);
	FUNC5(prev, prev_tex);
	FUNC4(field, s->deinterlace_top_first);
	FUNC6(dimensions, &size);

	frame2_ts = s->deinterlace_frame_ts + s->deinterlace_offset +
		    s->deinterlace_half_duration - TWOX_TOLERANCE;

	FUNC3(frame2, obs->video.video_time >= frame2_ts);

	while (FUNC2(effect, "Draw"))
		FUNC0(NULL, s->async_flip ? GS_FLIP_V : 0,
			       s->async_width, s->async_height);
}