#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_5__ {int flags; } ;
struct TYPE_6__ {scalar_t__ scaled_height; int /*<<< orphan*/  video; int /*<<< orphan*/  video_encoder; TYPE_1__ info; } ;
typedef  TYPE_2__ obs_output_t ;

/* Variables and functions */
 int OBS_OUTPUT_ENCODED ; 
 int OBS_OUTPUT_VIDEO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__ const*,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

uint32_t FUNC3(const obs_output_t *output)
{
	if (!FUNC1(output, "obs_output_get_height"))
		return 0;
	if ((output->info.flags & OBS_OUTPUT_VIDEO) == 0)
		return 0;

	if (output->info.flags & OBS_OUTPUT_ENCODED)
		return FUNC0(output->video_encoder);
	else
		return output->scaled_height != 0
			       ? output->scaled_height
			       : FUNC2(output->video);
}