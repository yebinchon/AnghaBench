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
struct ffmpeg_output {scalar_t__ stop_ts; int /*<<< orphan*/  stopping; scalar_t__ active; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ffmpeg_output*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC2(void *data, uint64_t ts)
{
	struct ffmpeg_output *output = data;

	if (output->active) {
		if (ts == 0) {
			FUNC0(output);
		} else {
			FUNC1(&output->stopping, true);
			output->stop_ts = ts;
		}
	}
}