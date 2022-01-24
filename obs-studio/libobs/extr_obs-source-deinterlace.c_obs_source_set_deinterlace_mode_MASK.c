#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int deinterlace_mode; int /*<<< orphan*/  deinterlace_effect; } ;
typedef  TYPE_1__ obs_source_t ;
typedef  enum obs_deinterlace_mode { ____Placeholder_obs_deinterlace_mode } obs_deinterlace_mode ;

/* Variables and functions */
 scalar_t__ OBS_DEINTERLACE_MODE_DISABLE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 

void FUNC6(obs_source_t *source,
				     enum obs_deinterlace_mode mode)
{
	if (!FUNC5(source, "obs_source_set_deinterlace_mode"))
		return;
	if (source->deinterlace_mode == mode)
		return;

	if (source->deinterlace_mode == OBS_DEINTERLACE_MODE_DISABLE) {
		FUNC1(source, mode);
	} else if (mode == OBS_DEINTERLACE_MODE_DISABLE) {
		FUNC0(source);
	} else {
		FUNC3();
		source->deinterlace_mode = mode;
		source->deinterlace_effect = FUNC2(mode);
		FUNC4();
	}
}