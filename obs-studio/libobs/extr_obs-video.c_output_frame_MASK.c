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
typedef  int /*<<< orphan*/  vframe_info ;
struct video_data {int /*<<< orphan*/  timestamp; } ;
struct obs_vframe_info {int /*<<< orphan*/  count; int /*<<< orphan*/  timestamp; } ;
struct obs_core_video {int cur_texture; int /*<<< orphan*/  vframe_info_buffer; int /*<<< orphan*/  graphics; } ;
struct TYPE_2__ {struct obs_core_video video; } ;

/* Variables and functions */
 int /*<<< orphan*/  GS_DEBUG_COLOR_RENDER_VIDEO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int NUM_TEXTURES ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct obs_vframe_info*,int) ; 
 int FUNC3 (struct obs_core_video*,int,struct video_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct video_data*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* obs ; 
 int /*<<< orphan*/  output_frame_download_frame_name ; 
 int /*<<< orphan*/  output_frame_gs_context_name ; 
 int /*<<< orphan*/  output_frame_gs_flush_name ; 
 int /*<<< orphan*/  output_frame_output_video_data_name ; 
 int /*<<< orphan*/  output_frame_render_video_name ; 
 int /*<<< orphan*/  FUNC8 (struct obs_core_video*,struct video_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct obs_core_video*,int,int const,int) ; 

__attribute__((used)) static inline void FUNC12(bool raw_active, const bool gpu_active)
{
	struct obs_core_video *video = &obs->video;
	int cur_texture = video->cur_texture;
	int prev_texture = cur_texture == 0 ? NUM_TEXTURES - 1
					    : cur_texture - 1;
	struct video_data frame;
	bool frame_ready = 0;

	FUNC7(&frame, 0, sizeof(struct video_data));

	FUNC10(output_frame_gs_context_name);
	FUNC4(video->graphics);

	FUNC10(output_frame_render_video_name);
	FUNC0(GS_DEBUG_COLOR_RENDER_VIDEO,
			      output_frame_render_video_name);
	FUNC11(video, raw_active, gpu_active, cur_texture);
	FUNC1();
	FUNC9(output_frame_render_video_name);

	if (raw_active) {
		FUNC10(output_frame_download_frame_name);
		frame_ready = FUNC3(video, prev_texture, &frame);
		FUNC9(output_frame_download_frame_name);
	}

	FUNC10(output_frame_gs_flush_name);
	FUNC5();
	FUNC9(output_frame_gs_flush_name);

	FUNC6();
	FUNC9(output_frame_gs_context_name);

	if (raw_active && frame_ready) {
		struct obs_vframe_info vframe_info;
		FUNC2(&video->vframe_info_buffer, &vframe_info,
				    sizeof(vframe_info));

		frame.timestamp = vframe_info.timestamp;
		FUNC10(output_frame_output_video_data_name);
		FUNC8(video, &frame, vframe_info.count);
		FUNC9(output_frame_output_video_data_name);
	}

	if (++video->cur_texture == NUM_TEXTURES)
		video->cur_texture = 0;
}