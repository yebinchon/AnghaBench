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
typedef  int /*<<< orphan*/  video_t ;
struct TYPE_4__ {int /*<<< orphan*/ * audio; int /*<<< orphan*/ * video; } ;
typedef  TYPE_1__ obs_output_t ;
typedef  int /*<<< orphan*/  audio_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 

void FUNC1(obs_output_t *output, video_t *video, audio_t *audio)
{
	if (!FUNC0(output, "obs_output_set_media"))
		return;

	output->video = video;
	output->audio = audio;
}