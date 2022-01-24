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
struct TYPE_6__ {scalar_t__ array; } ;
struct audio_mix {TYPE_2__ inputs; } ;
struct TYPE_5__ {int /*<<< orphan*/  input_mutex; struct audio_mix* mixes; } ;
typedef  TYPE_1__ audio_t ;
typedef  int /*<<< orphan*/  audio_output_callback_t ;

/* Variables and functions */
 size_t DARRAY_INVALID ; 
 size_t MAX_AUDIO_MIXES ; 
 size_t FUNC0 (TYPE_1__*,size_t,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(audio_t *audio, size_t mix_idx,
			     audio_output_callback_t callback, void *param)
{
	if (!audio || mix_idx >= MAX_AUDIO_MIXES)
		return;

	FUNC3(&audio->input_mutex);

	size_t idx = FUNC0(audio, mix_idx, callback, param);
	if (idx != DARRAY_INVALID) {
		struct audio_mix *mix = &audio->mixes[mix_idx];
		FUNC1(mix->inputs.array + idx);
		FUNC2(mix->inputs, idx);
	}

	FUNC4(&audio->input_mutex);
}