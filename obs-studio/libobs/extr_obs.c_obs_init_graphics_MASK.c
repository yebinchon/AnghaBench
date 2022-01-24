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
typedef  int /*<<< orphan*/  uint8_t ;
struct obs_video_info {int /*<<< orphan*/  adapter; int /*<<< orphan*/  graphics_module; } ;
struct obs_core_video {int /*<<< orphan*/  point_sampler; int /*<<< orphan*/  transparent_texture; void* premultiplied_alpha_effect; void* conversion_effect; void* solid_effect; void* opaque_effect; void* default_rect_effect; void* default_effect; void* bilinear_lowres_effect; void* area_effect; void* lanczos_effect; void* bicubic_effect; void* repeat_effect; int /*<<< orphan*/  graphics; } ;
struct gs_sampler_info {int max_anisotropy; int /*<<< orphan*/  member_0; } ;
struct TYPE_2__ {struct obs_core_video video; } ;

/* Variables and functions */
 scalar_t__ GS_DEVICE_OPENGL ; 
#define  GS_ERROR_MODULE_NOT_FOUND 129 
#define  GS_ERROR_NOT_SUPPORTED 128 
 int /*<<< orphan*/  GS_RGBA ; 
 int GS_SUCCESS ; 
 int OBS_VIDEO_FAIL ; 
 int OBS_VIDEO_MODULE_NOT_FOUND ; 
 int OBS_VIDEO_NOT_SUPPORTED ; 
 int OBS_VIDEO_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC2 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct gs_sampler_info*) ; 
 int /*<<< orphan*/  FUNC7 (int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/  const**,int /*<<< orphan*/ ) ; 
 TYPE_1__* obs ; 
 char* FUNC8 (char*) ; 

__attribute__((used)) static int FUNC9(struct obs_video_info *ovi)
{
	struct obs_core_video *video = &obs->video;
	uint8_t transparent_tex_data[2 * 2 * 4] = {0};
	const uint8_t *transparent_tex = transparent_tex_data;
	struct gs_sampler_info point_sampler = {0};
	bool success = true;
	int errorcode;

	errorcode =
		FUNC1(&video->graphics, ovi->graphics_module, ovi->adapter);
	if (errorcode != GS_SUCCESS) {
		switch (errorcode) {
		case GS_ERROR_MODULE_NOT_FOUND:
			return OBS_VIDEO_MODULE_NOT_FOUND;
		case GS_ERROR_NOT_SUPPORTED:
			return OBS_VIDEO_NOT_SUPPORTED;
		default:
			return OBS_VIDEO_FAIL;
		}
	}

	FUNC3(video->graphics);

	char *filename = FUNC8("default.effect");
	video->default_effect = FUNC2(filename, NULL);
	FUNC0(filename);

	if (FUNC4() == GS_DEVICE_OPENGL) {
		filename = FUNC8("default_rect.effect");
		video->default_rect_effect =
			FUNC2(filename, NULL);
		FUNC0(filename);
	}

	filename = FUNC8("opaque.effect");
	video->opaque_effect = FUNC2(filename, NULL);
	FUNC0(filename);

	filename = FUNC8("solid.effect");
	video->solid_effect = FUNC2(filename, NULL);
	FUNC0(filename);

	filename = FUNC8("repeat.effect");
	video->repeat_effect = FUNC2(filename, NULL);
	FUNC0(filename);

	filename = FUNC8("format_conversion.effect");
	video->conversion_effect = FUNC2(filename, NULL);
	FUNC0(filename);

	filename = FUNC8("bicubic_scale.effect");
	video->bicubic_effect = FUNC2(filename, NULL);
	FUNC0(filename);

	filename = FUNC8("lanczos_scale.effect");
	video->lanczos_effect = FUNC2(filename, NULL);
	FUNC0(filename);

	filename = FUNC8("area.effect");
	video->area_effect = FUNC2(filename, NULL);
	FUNC0(filename);

	filename = FUNC8("bilinear_lowres_scale.effect");
	video->bilinear_lowres_effect =
		FUNC2(filename, NULL);
	FUNC0(filename);

	filename = FUNC8("premultiplied_alpha.effect");
	video->premultiplied_alpha_effect =
		FUNC2(filename, NULL);
	FUNC0(filename);

	point_sampler.max_anisotropy = 1;
	video->point_sampler = FUNC6(&point_sampler);

	obs->video.transparent_texture =
		FUNC7(2, 2, GS_RGBA, 1, &transparent_tex, 0);

	if (!video->default_effect)
		success = false;
	if (FUNC4() == GS_DEVICE_OPENGL) {
		if (!video->default_rect_effect)
			success = false;
	}
	if (!video->opaque_effect)
		success = false;
	if (!video->solid_effect)
		success = false;
	if (!video->conversion_effect)
		success = false;
	if (!video->premultiplied_alpha_effect)
		success = false;
	if (!video->transparent_texture)
		success = false;
	if (!video->point_sampler)
		success = false;

	FUNC5();
	return success ? OBS_VIDEO_SUCCESS : OBS_VIDEO_FAIL;
}