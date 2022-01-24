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
struct async_delay_data {int /*<<< orphan*/  audio_frames; int /*<<< orphan*/  video_frames; int /*<<< orphan*/  audio_output; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(void *data)
{
	struct async_delay_data *filter = data;

	FUNC2(&filter->audio_output);
	FUNC1(&filter->video_frames);
	FUNC1(&filter->audio_frames);
	FUNC0(data);
}