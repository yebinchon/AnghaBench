#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct obs_encoder {int wait_for_video; int /*<<< orphan*/  init_mutex; struct obs_encoder* paired_encoder; int /*<<< orphan*/  active; } ;
struct TYPE_4__ {struct obs_encoder* video_encoder; } ;
typedef  TYPE_1__ obs_output_t ;

/* Variables and functions */
 struct obs_encoder* FUNC0 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC3(obs_output_t *output, size_t num_mixes)
{
	struct obs_encoder *video = output->video_encoder;
	struct obs_encoder *audio =
		FUNC0(output, num_mixes);

	if (video && audio) {
		FUNC1(&audio->init_mutex);
		FUNC1(&video->init_mutex);

		if (!audio->active && !video->active &&
		    !video->paired_encoder && !audio->paired_encoder) {

			audio->wait_for_video = true;
			audio->paired_encoder = video;
			video->paired_encoder = audio;
		}

		FUNC2(&video->init_mutex);
		FUNC2(&audio->init_mutex);
	}
}