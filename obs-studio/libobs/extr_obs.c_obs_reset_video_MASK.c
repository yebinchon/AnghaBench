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
struct obs_video_info {int output_width; int output_height; int base_width; int base_height; int scale_type; int /*<<< orphan*/  output_format; int /*<<< orphan*/  fps_den; int /*<<< orphan*/  fps_num; int /*<<< orphan*/  range; int /*<<< orphan*/  colorspace; } ;
struct obs_core_video {int /*<<< orphan*/  graphics; scalar_t__ video; } ;
struct TYPE_2__ {struct obs_core_video video; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_INFO ; 
#define  OBS_SCALE_AREA 133 
#define  OBS_SCALE_BICUBIC 132 
#define  OBS_SCALE_BILINEAR 131 
#define  OBS_SCALE_DISABLE 130 
#define  OBS_SCALE_LANCZOS 129 
#define  OBS_SCALE_POINT 128 
 int OBS_VIDEO_CURRENTLY_ACTIVE ; 
 int OBS_VIDEO_FAIL ; 
 int OBS_VIDEO_INVALID_PARAM ; 
 int OBS_VIDEO_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* obs ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (struct obs_video_info*) ; 
 int FUNC8 (struct obs_video_info*) ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int,int) ; 
 int /*<<< orphan*/  FUNC11 () ; 

int FUNC12(struct obs_video_info *ovi)
{
	if (!obs)
		return OBS_VIDEO_FAIL;

	/* don't allow changing of video settings if active. */
	if (obs->video.video && FUNC9())
		return OBS_VIDEO_CURRENTLY_ACTIVE;

	if (!FUNC10(ovi->output_width, ovi->output_height) ||
	    !FUNC10(ovi->base_width, ovi->base_height))
		return OBS_VIDEO_INVALID_PARAM;

	struct obs_core_video *video = &obs->video;

	FUNC11();
	FUNC6();

	/* align to multiple-of-two and SSE alignment sizes */
	ovi->output_width &= 0xFFFFFFFC;
	ovi->output_height &= 0xFFFFFFFE;

	if (!video->graphics) {
		int errorcode = FUNC7(ovi);
		if (errorcode != OBS_VIDEO_SUCCESS) {
			FUNC5();
			return errorcode;
		}
	}

	const char *scale_type_name = "";
	switch (ovi->scale_type) {
	case OBS_SCALE_DISABLE:
		scale_type_name = "Disabled";
		break;
	case OBS_SCALE_POINT:
		scale_type_name = "Point";
		break;
	case OBS_SCALE_BICUBIC:
		scale_type_name = "Bicubic";
		break;
	case OBS_SCALE_BILINEAR:
		scale_type_name = "Bilinear";
		break;
	case OBS_SCALE_LANCZOS:
		scale_type_name = "Lanczos";
		break;
	case OBS_SCALE_AREA:
		scale_type_name = "Area";
		break;
	}

	bool yuv = FUNC1(ovi->output_format);
	const char *yuv_format = FUNC2(ovi->colorspace);
	const char *yuv_range =
		FUNC4(ovi->output_format, ovi->range);

	FUNC0(LOG_INFO, "---------------------------------");
	FUNC0(LOG_INFO,
	     "video settings reset:\n"
	     "\tbase resolution:   %dx%d\n"
	     "\toutput resolution: %dx%d\n"
	     "\tdownscale filter:  %s\n"
	     "\tfps:               %d/%d\n"
	     "\tformat:            %s\n"
	     "\tYUV mode:          %s%s%s",
	     ovi->base_width, ovi->base_height, ovi->output_width,
	     ovi->output_height, scale_type_name, ovi->fps_num, ovi->fps_den,
	     FUNC3(ovi->output_format),
	     yuv ? yuv_format : "None", yuv ? "/" : "", yuv ? yuv_range : "");

	return FUNC8(ovi);
}