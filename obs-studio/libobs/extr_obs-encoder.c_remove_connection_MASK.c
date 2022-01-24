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
struct TYPE_2__ {scalar_t__ type; } ;
struct obs_encoder {int /*<<< orphan*/  media; int /*<<< orphan*/  mixer_idx; TYPE_1__ info; } ;

/* Variables and functions */
 scalar_t__ OBS_ENCODER_AUDIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct obs_encoder*) ; 
 scalar_t__ FUNC1 (struct obs_encoder*) ; 
 int /*<<< orphan*/  FUNC2 (struct obs_encoder*) ; 
 int /*<<< orphan*/  receive_audio ; 
 int /*<<< orphan*/  receive_video ; 
 int /*<<< orphan*/  FUNC3 (struct obs_encoder*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct obs_encoder*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct obs_encoder*) ; 

__attribute__((used)) static void FUNC6(struct obs_encoder *encoder, bool shutdown)
{
	if (encoder->info.type == OBS_ENCODER_AUDIO) {
		FUNC0(encoder->media, encoder->mixer_idx,
					receive_audio, encoder);
	} else {
		if (FUNC1(encoder)) {
			FUNC4(encoder);
		} else {
			FUNC5(encoder->media, receive_video, encoder);
		}
	}

	/* obs_encoder_shutdown locks init_mutex, so don't call it on encode
	 * errors, otherwise you can get a deadlock with outputs when they end
	 * data capture, which will lock init_mutex and the video callback
	 * mutex in the reverse order.  instead, call shutdown before starting
	 * up again */
	if (shutdown)
		FUNC2(encoder);
	FUNC3(encoder, false);
}