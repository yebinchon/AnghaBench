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
struct TYPE_2__ {int tracks; scalar_t__ has_video; } ;
struct ffmpeg_mux {int /*<<< orphan*/  num_audio_streams; int /*<<< orphan*/  video_stream; TYPE_1__ params; int /*<<< orphan*/  audio_streams; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ffmpeg_mux*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ffmpeg_mux*) ; 

__attribute__((used)) static bool FUNC3(struct ffmpeg_mux *ffm)
{
	if (ffm->params.has_video)
		FUNC2(ffm);

	if (ffm->params.tracks) {
		ffm->audio_streams =
			FUNC0(1, ffm->params.tracks * sizeof(void *));

		for (int i = 0; i < ffm->params.tracks; i++)
			FUNC1(ffm, i);
	}

	if (!ffm->video_stream && !ffm->num_audio_streams)
		return false;

	return true;
}