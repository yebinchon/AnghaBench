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
struct obs_core_video {int texture_rendered; int texture_converted; scalar_t__ cur_texture; scalar_t__ gpu_encoder_active; int /*<<< orphan*/  gpu_encoders; int /*<<< orphan*/  gpu_encoder_mutex; int /*<<< orphan*/  textures_copied; int /*<<< orphan*/  vframe_info_buffer_gpu; int /*<<< orphan*/  vframe_info_buffer; int /*<<< orphan*/ * output_texture; int /*<<< orphan*/ * render_texture; int /*<<< orphan*/ *** copy_surfaces; int /*<<< orphan*/ ** convert_textures; int /*<<< orphan*/ ** mapped_surfaces; int /*<<< orphan*/  graphics; int /*<<< orphan*/ * video; } ;
struct TYPE_2__ {struct obs_core_video video; } ;

/* Variables and functions */
 size_t NUM_CHANNELS ; 
 size_t NUM_TEXTURES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* obs ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(void)
{
	struct obs_core_video *video = &obs->video;

	if (video->video) {
		FUNC10(video->video);
		video->video = NULL;

		if (!video->graphics)
			return;

		FUNC2(video->graphics);

		for (size_t c = 0; c < NUM_CHANNELS; c++) {
			if (video->mapped_surfaces[c]) {
				FUNC5(
					video->mapped_surfaces[c]);
				video->mapped_surfaces[c] = NULL;
			}
		}

		for (size_t i = 0; i < NUM_TEXTURES; i++) {
			for (size_t c = 0; c < NUM_CHANNELS; c++) {
				if (video->copy_surfaces[i][c]) {
					FUNC4(
						video->copy_surfaces[i][c]);
					video->copy_surfaces[i][c] = NULL;
				}
			}
		}

		FUNC6(video->render_texture);

		for (size_t c = 0; c < NUM_CHANNELS; c++) {
			if (video->convert_textures[c]) {
				FUNC6(video->convert_textures[c]);
				video->convert_textures[c] = NULL;
			}
		}

		for (size_t i = 0; i < NUM_TEXTURES; i++) {
			for (size_t c = 0; c < NUM_CHANNELS; c++) {
				if (video->copy_surfaces[i][c]) {
					FUNC4(
						video->copy_surfaces[i][c]);
					video->copy_surfaces[i][c] = NULL;
				}
			}
		}

		FUNC6(video->output_texture);
		video->render_texture = NULL;
		video->output_texture = NULL;

		FUNC3();

		FUNC0(&video->vframe_info_buffer);
		FUNC0(&video->vframe_info_buffer_gpu);

		video->texture_rendered = false;
		;
		FUNC7(video->textures_copied, 0,
		       sizeof(video->textures_copied));
		video->texture_converted = false;
		;

		FUNC8(&video->gpu_encoder_mutex);
		FUNC9(&video->gpu_encoder_mutex);
		FUNC1(video->gpu_encoders);

		video->gpu_encoder_active = 0;
		video->cur_texture = 0;
	}
}