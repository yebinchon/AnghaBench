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
struct ffmpeg_source {int is_looping; int close_when_inactive; int range; int buffering_mb; int speed_percent; int is_local_file; int media_valid; void* restart_on_activate; int /*<<< orphan*/  source; int /*<<< orphan*/  media; void* seekable; void* is_clear_on_media_end; void* is_hw_decoding; int /*<<< orphan*/ * input_format; int /*<<< orphan*/ * input; } ;
typedef  int /*<<< orphan*/  obs_data_t ;
typedef  enum video_range_type { ____Placeholder_video_range_type } video_range_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ffmpeg_source*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct ffmpeg_source*) ; 
 int /*<<< orphan*/  FUNC4 (struct ffmpeg_source*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 void* FUNC6 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(void *data, obs_data_t *settings)
{
	struct ffmpeg_source *s = data;

	bool is_local_file = FUNC6(settings, "is_local_file");

	char *input;
	char *input_format;

	FUNC0(s->input);
	FUNC0(s->input_format);

	if (is_local_file) {
		input = (char *)FUNC8(settings, "local_file");
		input_format = NULL;
		s->is_looping = FUNC6(settings, "looping");
		s->close_when_inactive =
			FUNC6(settings, "close_when_inactive");
	} else {
		input = (char *)FUNC8(settings, "input");
		input_format =
			(char *)FUNC8(settings, "input_format");
		s->is_looping = false;
		s->close_when_inactive = true;
	}

	s->input = input ? FUNC1(input) : NULL;
	s->input_format = input_format ? FUNC1(input_format) : NULL;
#ifndef __APPLE__
	s->is_hw_decoding = FUNC6(settings, "hw_decode");
#endif
	s->is_clear_on_media_end =
		FUNC6(settings, "clear_on_media_end");
	s->restart_on_activate =
		FUNC6(settings, "restart_on_activate");
	s->range = (enum video_range_type)FUNC7(settings,
							   "color_range");
	s->buffering_mb = (int)FUNC7(settings, "buffering_mb");
	s->speed_percent = (int)FUNC7(settings, "speed_percent");
	s->is_local_file = is_local_file;
	s->seekable = FUNC6(settings, "seekable");

	if (s->speed_percent < 1 || s->speed_percent > 200)
		s->speed_percent = 100;

	if (s->media_valid) {
		FUNC5(&s->media);
		s->media_valid = false;
	}

	bool active = FUNC9(s->source);
	if (!s->close_when_inactive || active)
		FUNC3(s);

	FUNC2(s, input, input_format);
	if (!s->restart_on_activate || active)
		FUNC4(s);
}