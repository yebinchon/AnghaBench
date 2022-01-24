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
struct obs_core_video {int /*<<< orphan*/ ** mapped_surfaces; } ;

/* Variables and functions */
 int NUM_CHANNELS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC1(struct obs_core_video *video)
{
	for (int c = 0; c < NUM_CHANNELS; ++c) {
		if (video->mapped_surfaces[c]) {
			FUNC0(video->mapped_surfaces[c]);
			video->mapped_surfaces[c] = NULL;
		}
	}
}