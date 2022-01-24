#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct video_data {int /*<<< orphan*/  timestamp; } ;
struct TYPE_4__ {int /*<<< orphan*/  data; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* raw_video ) (int /*<<< orphan*/ ,struct video_data*) ;} ;
struct obs_output {int /*<<< orphan*/  total_frames; TYPE_2__ context; TYPE_1__ info; int /*<<< orphan*/  pause; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct obs_output*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct video_data*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void *param, struct video_data *frame)
{
	struct obs_output *output = param;

	if (FUNC2(&output->pause, frame->timestamp))
		return;

	if (FUNC0(output))
		output->info.raw_video(output->context.data, frame);
	output->total_frames++;
}