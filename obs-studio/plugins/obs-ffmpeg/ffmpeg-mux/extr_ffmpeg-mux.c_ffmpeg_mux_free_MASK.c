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
struct TYPE_2__ {int tracks; } ;
struct ffmpeg_mux {int /*<<< orphan*/ * audio; int /*<<< orphan*/ * audio_header; TYPE_1__ params; int /*<<< orphan*/  video_header; int /*<<< orphan*/  output; scalar_t__ initialized; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ffmpeg_mux*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ffmpeg_mux*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct ffmpeg_mux *ffm)
{
	if (ffm->initialized) {
		FUNC0(ffm->output);
	}

	FUNC2(ffm);

	FUNC3(&ffm->video_header);

	if (ffm->audio_header) {
		for (int i = 0; i < ffm->params.tracks; i++) {
			FUNC3(&ffm->audio_header[i]);
		}

		FUNC1(ffm->audio_header);
	}

	if (ffm->audio) {
		FUNC1(ffm->audio);
	}

	FUNC4(ffm, 0, sizeof(*ffm));
}