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
typedef  void* uint64_t ;
struct stinger_info {int transition_point_is_frame; int monitoring_type; int fade_style; int /*<<< orphan*/  mix_b; int /*<<< orphan*/  mix_a; int /*<<< orphan*/  media_source; void* transition_point_ns; void* transition_point_frame; } ;
typedef  int /*<<< orphan*/  obs_data_t ;
typedef  long long int64_t ;
typedef  enum fade_style { ____Placeholder_fade_style } fade_style ;

/* Variables and functions */
#define  FADE_STYLE_CROSS_FADE 129 
#define  FADE_STYLE_FADE_OUT_FADE_IN 128 
 scalar_t__ TIMING_FRAME ; 
 int /*<<< orphan*/  mix_a_cross_fade ; 
 int /*<<< orphan*/  mix_a_fade_in_out ; 
 int /*<<< orphan*/  mix_b_cross_fade ; 
 int /*<<< orphan*/  mix_b_fade_in_out ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC8(void *data, obs_data_t *settings)
{
	struct stinger_info *s = data;
	const char *path = FUNC2(settings, "path");

	obs_data_t *media_settings = FUNC0();
	FUNC4(media_settings, "local_file", path);

	FUNC6(s->media_source);
	s->media_source = FUNC5("ffmpeg_source", NULL,
						    media_settings);
	FUNC3(media_settings);

	int64_t point = FUNC1(settings, "transition_point");

	s->transition_point_is_frame = FUNC1(settings, "tp_type") ==
				       TIMING_FRAME;

	if (s->transition_point_is_frame)
		s->transition_point_frame = (uint64_t)point;
	else
		s->transition_point_ns = (uint64_t)(point * 1000000LL);

	s->monitoring_type =
		(int)FUNC1(settings, "audio_monitoring");
	FUNC7(s->media_source, s->monitoring_type);

	s->fade_style =
		(enum fade_style)FUNC1(settings, "audio_fade_style");

	switch (s->fade_style) {
	default:
	case FADE_STYLE_FADE_OUT_FADE_IN:
		s->mix_a = mix_a_fade_in_out;
		s->mix_b = mix_b_fade_in_out;
		break;
	case FADE_STYLE_CROSS_FADE:
		s->mix_a = mix_a_cross_fade;
		s->mix_b = mix_b_cross_fade;
		break;
	}
}