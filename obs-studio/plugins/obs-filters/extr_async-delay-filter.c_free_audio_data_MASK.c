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
struct obs_audio_data {int dummy; } ;
struct TYPE_2__ {scalar_t__ size; } ;
struct async_delay_data {TYPE_1__ audio_frames; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,struct obs_audio_data*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct obs_audio_data*) ; 

__attribute__((used)) static void FUNC2(struct async_delay_data *filter)
{
	while (filter->audio_frames.size) {
		struct obs_audio_data audio;

		FUNC0(&filter->audio_frames, &audio,
				    sizeof(struct obs_audio_data));
		FUNC1(&audio);
	}
}