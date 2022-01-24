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

/* Variables and functions */
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  aac_encoder_info ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ffmpeg_muxer ; 
 int /*<<< orphan*/  ffmpeg_output ; 
 int /*<<< orphan*/  ffmpeg_source ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  nvenc_encoder_info ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  opus_encoder_info ; 
 int /*<<< orphan*/  replay_buffer ; 
 int /*<<< orphan*/  vaapi_encoder_info ; 
 scalar_t__ FUNC8 () ; 

bool FUNC9(void)
{
	FUNC7(&ffmpeg_source);
	FUNC6(&ffmpeg_output);
	FUNC6(&ffmpeg_muxer);
	FUNC6(&replay_buffer);
	FUNC5(&aac_encoder_info);
	FUNC5(&opus_encoder_info);
#ifndef __APPLE__
	if (FUNC3()) {
		FUNC0(LOG_INFO, "NVENC supported");
#ifdef _WIN32
		if (get_win_ver_int() > 0x0601) {
			jim_nvenc_load();
		}
#endif
		FUNC5(&nvenc_encoder_info);
	}
#if !defined(_WIN32) && defined(LIBAVUTIL_VAAPI_AVAILABLE)
	if (vaapi_supported()) {
		blog(LOG_INFO, "FFMPEG VAAPI supported");
		obs_register_encoder(&vaapi_encoder_info);
	}
#endif
#endif

#if ENABLE_FFMPEG_LOGGING
	obs_ffmpeg_load_logging();
#endif
	return true;
}