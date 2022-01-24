#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  video_t ;
typedef  void* uint32_t ;
struct vt_h264_encoder {int fullrange; void* bframes; int /*<<< orphan*/  rc_max_bitrate_window; scalar_t__ rc_max_bitrate; void* limit_bitrate; int /*<<< orphan*/  profile; void* bitrate; void* keyint; int /*<<< orphan*/  fps_den; int /*<<< orphan*/  fps_num; int /*<<< orphan*/  encoder; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  colorspace; } ;
struct video_scale_info {int /*<<< orphan*/  format; } ;
struct video_output_info {scalar_t__ range; int /*<<< orphan*/  fps_den; int /*<<< orphan*/  fps_num; int /*<<< orphan*/  colorspace; int /*<<< orphan*/  format; } ;
typedef  int /*<<< orphan*/  obs_data_t ;

/* Variables and functions */
 scalar_t__ VIDEO_RANGE_FULL ; 
 void* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 struct video_output_info* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct vt_h264_encoder*,struct video_scale_info*) ; 

__attribute__((used)) static void FUNC9(struct vt_h264_encoder *enc, obs_data_t *settings)
{
	video_t *video = FUNC6(enc->encoder);
	const struct video_output_info *voi = FUNC7(video);

	struct video_scale_info info = {.format = voi->format};

	enc->fullrange = voi->range == VIDEO_RANGE_FULL;

	// also sets the enc->vt_pix_fmt
	FUNC8(enc, &info);

	enc->colorspace = voi->colorspace;

	enc->width = FUNC5(enc->encoder);
	enc->height = FUNC4(enc->encoder);
	enc->fps_num = voi->fps_num;
	enc->fps_den = voi->fps_den;
	enc->keyint = (uint32_t)FUNC2(settings, "keyint_sec");
	enc->bitrate = (uint32_t)FUNC2(settings, "bitrate");
	enc->profile = FUNC3(settings, "profile");
	enc->limit_bitrate = FUNC0(settings, "limit_bitrate");
	enc->rc_max_bitrate = FUNC2(settings, "max_bitrate");
	enc->rc_max_bitrate_window =
		FUNC1(settings, "max_bitrate_window");
	enc->bframes = FUNC0(settings, "bframes");
}