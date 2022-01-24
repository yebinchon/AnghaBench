#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint32_t ;
struct TYPE_7__ {int flags; } ;
struct TYPE_8__ {scalar_t__ video_encoder; TYPE_1__ info; void* scaled_height; void* scaled_width; } ;
typedef  TYPE_2__ obs_output_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_WARNING ; 
 int OBS_OUTPUT_ENCODED ; 
 int OBS_OUTPUT_VIDEO ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,void*,void*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*) ; 

void FUNC5(obs_output_t *output, uint32_t width,
				   uint32_t height)
{
	if (!FUNC4(output, "obs_output_set_preferred_size"))
		return;
	if ((output->info.flags & OBS_OUTPUT_VIDEO) == 0)
		return;

	if (FUNC0(output)) {
		FUNC1(LOG_WARNING,
		     "output '%s': Cannot set the preferred "
		     "resolution while the output is active",
		     FUNC3(output));
		return;
	}

	output->scaled_width = width;
	output->scaled_height = height;

	if (output->info.flags & OBS_OUTPUT_ENCODED) {
		if (output->video_encoder)
			FUNC2(output->video_encoder,
						    width, height);
	}
}