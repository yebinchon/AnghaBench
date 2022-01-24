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
struct video_scale_info {int dummy; } ;
struct TYPE_4__ {int video_conversion_set; struct video_scale_info video_conversion; } ;
typedef  TYPE_1__ obs_output_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct video_scale_info const*,char*) ; 

void FUNC2(obs_output_t *output,
				     const struct video_scale_info *conversion)
{
	if (!FUNC0(output, "obs_output_set_video_conversion"))
		return;
	if (!FUNC1(conversion, "obs_output_set_video_conversion"))
		return;

	output->video_conversion = *conversion;
	output->video_conversion_set = true;
}