#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint64_t ;
struct TYPE_8__ {TYPE_2__** audio_encoders; TYPE_2__* video_encoder; } ;
typedef  TYPE_1__ obs_output_t ;
struct TYPE_10__ {int /*<<< orphan*/  mutex; void* ts_start; } ;
struct TYPE_9__ {TYPE_3__ pause; int /*<<< orphan*/  paused; } ;
typedef  TYPE_2__ obs_encoder_t ;

/* Variables and functions */
 int MAX_AUDIO_MIXES ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,void*) ; 
 void* FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC7(obs_output_t *output, bool pause)
{
	obs_encoder_t *venc;
	obs_encoder_t *aenc[MAX_AUDIO_MIXES];
	uint64_t closest_v_ts;
	bool success = false;

	venc = output->video_encoder;
	for (size_t i = 0; i < MAX_AUDIO_MIXES; i++)
		aenc[i] = output->audio_encoders[i];

	FUNC5(&venc->pause.mutex);
	for (size_t i = 0; i < MAX_AUDIO_MIXES; i++) {
		if (aenc[i]) {
			FUNC5(&aenc[i]->pause.mutex);
		}
	}

	/* ---------------------------- */

	closest_v_ts = FUNC1(&venc->pause);

	if (pause) {
		if (!FUNC3(&venc->pause)) {
			goto fail;
		}
		for (size_t i = 0; i < MAX_AUDIO_MIXES; i++) {
			if (aenc[i] && !FUNC3(&aenc[i]->pause)) {
				goto fail;
			}
		}

		FUNC2(&venc->paused, true);
		venc->pause.ts_start = closest_v_ts;

		for (size_t i = 0; i < MAX_AUDIO_MIXES; i++) {
			if (aenc[i]) {
				FUNC2(&aenc[i]->paused, true);
				aenc[i]->pause.ts_start = closest_v_ts;
			}
		}
	} else {
		if (!FUNC4(&venc->pause)) {
			goto fail;
		}
		for (size_t i = 0; i < MAX_AUDIO_MIXES; i++) {
			if (aenc[i] && !FUNC4(&aenc[i]->pause)) {
				goto fail;
			}
		}

		FUNC2(&venc->paused, false);
		FUNC0(&venc->pause, closest_v_ts);

		for (size_t i = 0; i < MAX_AUDIO_MIXES; i++) {
			if (aenc[i]) {
				FUNC2(&aenc[i]->paused, false);
				FUNC0(&aenc[i]->pause, closest_v_ts);
			}
		}
	}

	/* ---------------------------- */

	success = true;

fail:
	for (size_t i = MAX_AUDIO_MIXES; i > 0; i--) {
		if (aenc[i - 1]) {
			FUNC6(&aenc[i - 1]->pause.mutex);
		}
	}
	FUNC6(&venc->pause.mutex);

	return success;
}