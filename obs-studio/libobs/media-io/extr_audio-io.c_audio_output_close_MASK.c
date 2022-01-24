#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {size_t num; scalar_t__ array; } ;
struct audio_mix {TYPE_2__ inputs; } ;
struct TYPE_5__ {int /*<<< orphan*/  stop_event; struct audio_mix* mixes; int /*<<< orphan*/  thread; scalar_t__ initialized; } ;
typedef  TYPE_1__ audio_t ;

/* Variables and functions */
 size_t MAX_AUDIO_MIXES ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,void**) ; 

void FUNC6(audio_t *audio)
{
	void *thread_ret;

	if (!audio)
		return;

	if (audio->initialized) {
		FUNC4(audio->stop_event);
		FUNC5(audio->thread, &thread_ret);
	}

	for (size_t mix_idx = 0; mix_idx < MAX_AUDIO_MIXES; mix_idx++) {
		struct audio_mix *mix = &audio->mixes[mix_idx];

		for (size_t i = 0; i < mix->inputs.num; i++)
			FUNC0(mix->inputs.array + i);

		FUNC2(mix->inputs);
	}

	FUNC3(audio->stop_event);
	FUNC1(audio);
}