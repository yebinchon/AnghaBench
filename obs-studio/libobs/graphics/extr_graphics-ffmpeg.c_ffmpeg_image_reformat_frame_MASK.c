#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct ffmpeg_image {scalar_t__ format; int cy; int /*<<< orphan*/  file; int /*<<< orphan*/  cx; } ;
struct SwsContext {int dummy; } ;
struct TYPE_3__ {int* linesize; scalar_t__* data; } ;
typedef  TYPE_1__ AVFrame ;

/* Variables and functions */
 scalar_t__ AV_PIX_FMT_BGR0 ; 
 scalar_t__ AV_PIX_FMT_BGRA ; 
 scalar_t__ AV_PIX_FMT_RGBA ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  SWS_POINT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (struct SwsContext*) ; 
 struct SwsContext* FUNC4 (int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct SwsContext*,int /*<<< orphan*/  const* const*,int*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ **,int*) ; 

__attribute__((used)) static bool FUNC6(struct ffmpeg_image *info,
					AVFrame *frame, uint8_t *out,
					int linesize)
{
	struct SwsContext *sws_ctx = NULL;
	int ret = 0;

	if (info->format == AV_PIX_FMT_RGBA ||
	    info->format == AV_PIX_FMT_BGRA ||
	    info->format == AV_PIX_FMT_BGR0) {

		if (linesize != frame->linesize[0]) {
			int min_line = linesize < frame->linesize[0]
					       ? linesize
					       : frame->linesize[0];

			for (int y = 0; y < info->cy; y++)
				FUNC2(out + y * linesize,
				       frame->data[0] + y * frame->linesize[0],
				       min_line);
		} else {
			FUNC2(out, frame->data[0], linesize * info->cy);
		}

	} else {
		sws_ctx = FUNC4(info->cx, info->cy, info->format,
					 info->cx, info->cy, AV_PIX_FMT_BGRA,
					 SWS_POINT, NULL, NULL, NULL);
		if (!sws_ctx) {
			FUNC1(LOG_WARNING,
			     "Failed to create scale context "
			     "for '%s'",
			     info->file);
			return false;
		}

		ret = FUNC5(sws_ctx, (const uint8_t *const *)frame->data,
				frame->linesize, 0, info->cy, &out, &linesize);
		FUNC3(sws_ctx);

		if (ret < 0) {
			FUNC1(LOG_WARNING, "sws_scale failed for '%s': %s",
			     info->file, FUNC0(ret));
			return false;
		}

		info->format = AV_PIX_FMT_BGRA;
	}

	return true;
}