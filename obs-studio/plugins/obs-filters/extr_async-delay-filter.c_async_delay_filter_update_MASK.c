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
typedef  scalar_t__ uint64_t ;
struct async_delay_data {scalar_t__ interval; int reset_audio; int reset_video; int video_delay_reached; int audio_delay_reached; int /*<<< orphan*/  context; } ;
typedef  int /*<<< orphan*/  obs_data_t ;

/* Variables and functions */
 scalar_t__ MSEC_TO_NSEC ; 
 int /*<<< orphan*/  SETTING_DELAY_MS ; 
 int /*<<< orphan*/  FUNC0 (struct async_delay_data*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void *data, obs_data_t *settings)
{
	struct async_delay_data *filter = data;
	uint64_t new_interval =
		(uint64_t)FUNC1(settings, SETTING_DELAY_MS) *
		MSEC_TO_NSEC;

	if (new_interval < filter->interval)
		FUNC0(filter, FUNC2(filter->context));

	filter->reset_audio = true;
	filter->reset_video = true;
	filter->interval = new_interval;
	filter->video_delay_reached = false;
	filter->audio_delay_reached = false;
}