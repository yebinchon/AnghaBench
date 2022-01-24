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
struct video_output_info {int format; } ;
struct obs_video_info {scalar_t__ output_format; int output_width; int output_height; } ;
struct obs_core_video {int using_nv12_tex; int gpu_conversion; void** convert_textures; int /*<<< orphan*/  video; int /*<<< orphan*/  conversion_needed; } ;
struct TYPE_2__ {struct obs_core_video video; } ;

/* Variables and functions */
 int /*<<< orphan*/  GS_R8 ; 
 int /*<<< orphan*/  GS_R8G8 ; 
 int GS_RENDER_TARGET ; 
 int GS_SHARED_KM_TEX ; 
 int /*<<< orphan*/  LOG_INFO ; 
#define  VIDEO_FORMAT_I420 130 
#define  VIDEO_FORMAT_I444 129 
#define  VIDEO_FORMAT_NV12 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct obs_video_info*) ; 
 int FUNC2 () ; 
 void* FUNC3 (int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (void**,void**,int,int,int) ; 
 TYPE_1__* obs ; 
 struct video_output_info* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC6(struct obs_video_info *ovi)
{
	struct obs_core_video *video = &obs->video;

	FUNC1(ovi);

	video->using_nv12_tex = ovi->output_format == VIDEO_FORMAT_NV12
					? FUNC2()
					: false;

	if (!video->conversion_needed) {
		FUNC0(LOG_INFO, "GPU conversion not available for format: %u",
		     (unsigned int)ovi->output_format);
		video->gpu_conversion = false;
		video->using_nv12_tex = false;
		FUNC0(LOG_INFO, "NV12 texture support not available");
		return true;
	}

	if (video->using_nv12_tex)
		FUNC0(LOG_INFO, "NV12 texture support enabled");
	else
		FUNC0(LOG_INFO, "NV12 texture support not available");

#ifdef _WIN32
	if (video->using_nv12_tex) {
		gs_texture_create_nv12(&video->convert_textures[0],
				       &video->convert_textures[1],
				       ovi->output_width, ovi->output_height,
				       GS_RENDER_TARGET | GS_SHARED_KM_TEX);
	} else {
#endif
		video->convert_textures[0] =
			FUNC3(ovi->output_width, ovi->output_height,
					  GS_R8, 1, NULL, GS_RENDER_TARGET);

		const struct video_output_info *info =
			FUNC5(video->video);
		switch (info->format) {
		case VIDEO_FORMAT_I420:
			video->convert_textures[1] = FUNC3(
				ovi->output_width / 2, ovi->output_height / 2,
				GS_R8, 1, NULL, GS_RENDER_TARGET);
			video->convert_textures[2] = FUNC3(
				ovi->output_width / 2, ovi->output_height / 2,
				GS_R8, 1, NULL, GS_RENDER_TARGET);
			if (!video->convert_textures[2])
				return false;
			break;
		case VIDEO_FORMAT_NV12:
			video->convert_textures[1] = FUNC3(
				ovi->output_width / 2, ovi->output_height / 2,
				GS_R8G8, 1, NULL, GS_RENDER_TARGET);
			break;
		case VIDEO_FORMAT_I444:
			video->convert_textures[1] = FUNC3(
				ovi->output_width, ovi->output_height, GS_R8, 1,
				NULL, GS_RENDER_TARGET);
			video->convert_textures[2] = FUNC3(
				ovi->output_width, ovi->output_height, GS_R8, 1,
				NULL, GS_RENDER_TARGET);
			if (!video->convert_textures[2])
				return false;
			break;
		default:
			break;
		}
#ifdef _WIN32
	}
#endif

	if (!video->convert_textures[0])
		return false;
	if (!video->convert_textures[1])
		return false;

	return true;
}