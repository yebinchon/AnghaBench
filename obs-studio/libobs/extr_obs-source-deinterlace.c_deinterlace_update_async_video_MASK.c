#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct obs_source_frame {int dummy; } ;
struct TYPE_8__ {int deinterlace_rendered; int /*<<< orphan*/ * async_texrender; int /*<<< orphan*/ * async_prev_texrender; int /*<<< orphan*/ ** async_textures; int /*<<< orphan*/ ** async_prev_textures; } ;
typedef  TYPE_1__ obs_source_t ;
typedef  int /*<<< orphan*/  gs_texture_t ;
typedef  int /*<<< orphan*/  gs_texrender_t ;

/* Variables and functions */
 size_t MAX_AV_PLANES ; 
 struct obs_source_frame* FUNC0 (TYPE_1__*,struct obs_source_frame*) ; 
 struct obs_source_frame* FUNC1 (TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct obs_source_frame*) ; 
 scalar_t__ FUNC3 (TYPE_1__*,struct obs_source_frame*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct obs_source_frame*,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

void FUNC5(obs_source_t *source)
{
	struct obs_source_frame *frame;
	bool updated;

	if (source->deinterlace_rendered)
		return;

	frame = FUNC1(source, &updated);

	source->deinterlace_rendered = true;
	if (frame)
		frame = FUNC0(source, frame);

	if (frame) {
		if (FUNC3(source, frame)) {
			FUNC4(source, frame,
					      source->async_prev_textures,
					      source->async_prev_texrender);
		}

		FUNC2(source, frame);

	} else if (updated) { /* swap cur/prev if no previous texture */
		for (size_t c = 0; c < MAX_AV_PLANES; c++) {
			gs_texture_t *prev_tex = source->async_prev_textures[c];
			source->async_prev_textures[c] =
				source->async_textures[c];
			source->async_textures[c] = prev_tex;
		}

		if (source->async_texrender) {
			gs_texrender_t *prev = source->async_prev_texrender;
			source->async_prev_texrender = source->async_texrender;
			source->async_texrender = prev;
		}
	}
}