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
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
struct video_output {int /*<<< orphan*/  total_frames; scalar_t__ stop; int /*<<< orphan*/  update_semaphore; TYPE_1__ info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 char* FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct video_output*) ; 

__attribute__((used)) static void *FUNC9(void *param)
{
	struct video_output *video = param;

	FUNC3("video-io: video thread");

	const char *video_thread_name =
		FUNC7(FUNC0(),
				   "video_thread(%s)", video->info.name);

	while (FUNC2(video->update_semaphore) == 0) {
		if (video->stop)
			break;

		FUNC6(video_thread_name);
		while (!video->stop && !FUNC8(video)) {
			FUNC1(&video->total_frames);
		}

		FUNC1(&video->total_frames);
		FUNC4(video_thread_name);

		FUNC5();
	}

	return NULL;
}