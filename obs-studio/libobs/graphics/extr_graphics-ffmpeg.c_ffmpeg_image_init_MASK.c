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
struct ffmpeg_image {char const* file; int stream_idx; TYPE_1__* decoder_ctx; int /*<<< orphan*/  format; int /*<<< orphan*/  cy; int /*<<< orphan*/  cx; int /*<<< orphan*/  fmt_ctx; } ;
struct TYPE_2__ {int /*<<< orphan*/  pix_fmt; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ffmpeg_image*) ; 
 int /*<<< orphan*/  FUNC5 (struct ffmpeg_image*) ; 
 int /*<<< orphan*/  FUNC6 (struct ffmpeg_image*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool FUNC7(struct ffmpeg_image *info, const char *file)
{
	int ret;

	if (!file || !*file)
		return false;

	FUNC6(info, 0, sizeof(struct ffmpeg_image));
	info->file = file;
	info->stream_idx = -1;

	ret = FUNC2(&info->fmt_ctx, file, NULL, NULL);
	if (ret < 0) {
		FUNC3(LOG_WARNING, "Failed to open file '%s': %s", info->file,
		     FUNC0(ret));
		return false;
	}

	ret = FUNC1(info->fmt_ctx, NULL);
	if (ret < 0) {
		FUNC3(LOG_WARNING,
		     "Could not find stream info for file '%s':"
		     " %s",
		     info->file, FUNC0(ret));
		goto fail;
	}

	if (!FUNC5(info))
		goto fail;

	info->cx = info->decoder_ctx->width;
	info->cy = info->decoder_ctx->height;
	info->format = info->decoder_ctx->pix_fmt;
	return true;

fail:
	FUNC4(info);
	return false;
}