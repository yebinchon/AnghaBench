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
struct video_scale_info {int /*<<< orphan*/  member_0; } ;
struct TYPE_2__ {scalar_t__ type; } ;
struct obs_encoder {int /*<<< orphan*/  media; int /*<<< orphan*/  mixer_idx; TYPE_1__ info; } ;
struct audio_convert_info {int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 scalar_t__ OBS_ENCODER_AUDIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct audio_convert_info*,int /*<<< orphan*/ ,struct obs_encoder*) ; 
 int /*<<< orphan*/  FUNC1 (struct obs_encoder*,struct audio_convert_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct obs_encoder*,struct video_scale_info*) ; 
 scalar_t__ FUNC3 (struct obs_encoder*) ; 
 int /*<<< orphan*/  receive_audio ; 
 int /*<<< orphan*/  receive_video ; 
 int /*<<< orphan*/  FUNC4 (struct obs_encoder*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct obs_encoder*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct video_scale_info*,int /*<<< orphan*/ ,struct obs_encoder*) ; 

__attribute__((used)) static void FUNC7(struct obs_encoder *encoder)
{
	if (encoder->info.type == OBS_ENCODER_AUDIO) {
		struct audio_convert_info audio_info = {0};
		FUNC1(encoder, &audio_info);

		FUNC0(encoder->media, encoder->mixer_idx,
				     &audio_info, receive_audio, encoder);
	} else {
		struct video_scale_info info = {0};
		FUNC2(encoder, &info);

		if (FUNC3(encoder)) {
			FUNC5(encoder);
		} else {
			FUNC6(encoder->media, &info, receive_video,
					encoder);
		}
	}

	FUNC4(encoder, true);
}