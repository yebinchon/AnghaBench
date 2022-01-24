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
struct TYPE_4__ {int deinterlace_mode; } ;
typedef  TYPE_1__ obs_source_t ;
typedef  enum obs_deinterlace_mode { ____Placeholder_obs_deinterlace_mode } obs_deinterlace_mode ;

/* Variables and functions */
 int OBS_DEINTERLACE_MODE_DISABLE ; 
 scalar_t__ FUNC0 (TYPE_1__ const*,char*) ; 

enum obs_deinterlace_mode
FUNC1(const obs_source_t *source)
{
	return FUNC0(source, "obs_source_set_deinterlace_mode")
		       ? source->deinterlace_mode
		       : OBS_DEINTERLACE_MODE_DISABLE;
}