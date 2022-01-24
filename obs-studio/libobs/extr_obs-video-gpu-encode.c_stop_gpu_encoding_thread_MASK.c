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
struct obs_core_video {int gpu_encode_thread_initialized; int /*<<< orphan*/  gpu_encode_thread; int /*<<< orphan*/  gpu_encode_semaphore; int /*<<< orphan*/  gpu_encode_stop; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC3(struct obs_core_video *video)
{
	if (video->gpu_encode_thread_initialized) {
		FUNC0(&video->gpu_encode_stop, true);
		FUNC1(video->gpu_encode_semaphore);
		FUNC2(video->gpu_encode_thread, NULL);
		video->gpu_encode_thread_initialized = false;
	}
}