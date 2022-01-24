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
struct video_scaler {int /*<<< orphan*/  swscale; int /*<<< orphan*/  src_height; } ;
typedef  struct video_scaler video_scaler_t ;
struct video_scale_info {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  range; int /*<<< orphan*/  colorspace; int /*<<< orphan*/  format; } ;
typedef  enum video_scale_type { ____Placeholder_video_scale_type } video_scale_type ;
typedef  enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;

/* Variables and functions */
 int AV_PIX_FMT_NONE ; 
 int /*<<< orphan*/  FIXED_1_0 ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  LOG_ERROR ; 
 int VIDEO_SCALER_BAD_CONVERSION ; 
 int VIDEO_SCALER_FAILED ; 
 int VIDEO_SCALER_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct video_scaler* FUNC1 (int) ; 
 int* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int const*,int,int const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct video_scaler*) ; 

int FUNC9(video_scaler_t **scaler_out,
			const struct video_scale_info *dst,
			const struct video_scale_info *src,
			enum video_scale_type type)
{
	enum AVPixelFormat format_src = FUNC5(src->format);
	enum AVPixelFormat format_dst = FUNC5(dst->format);
	int scale_type = FUNC4(type);
	const int *coeff_src = FUNC2(src->colorspace);
	const int *coeff_dst = FUNC2(dst->colorspace);
	int range_src = FUNC3(src->range);
	int range_dst = FUNC3(dst->range);
	struct video_scaler *scaler;
	int ret;

	if (!scaler_out)
		return VIDEO_SCALER_FAILED;

	if (format_src == AV_PIX_FMT_NONE || format_dst == AV_PIX_FMT_NONE)
		return VIDEO_SCALER_BAD_CONVERSION;

	scaler = FUNC1(sizeof(struct video_scaler));
	scaler->src_height = src->height;

	scaler->swscale = FUNC6(NULL, src->width, src->height,
					       format_src, dst->width,
					       dst->height, format_dst,
					       scale_type, NULL, NULL, NULL);
	if (!scaler->swscale) {
		FUNC0(LOG_ERROR, "video_scaler_create: Could not create "
				"swscale");
		goto fail;
	}

	ret = FUNC7(scaler->swscale, coeff_src, range_src,
				       coeff_dst, range_dst, 0, FIXED_1_0,
				       FIXED_1_0);
	if (ret < 0) {
		FUNC0(LOG_DEBUG, "video_scaler_create: "
				"sws_setColorspaceDetails failed, ignoring");
	}

	*scaler_out = scaler;
	return VIDEO_SCALER_SUCCESS;

fail:
	FUNC8(scaler);
	return VIDEO_SCALER_FAILED;
}