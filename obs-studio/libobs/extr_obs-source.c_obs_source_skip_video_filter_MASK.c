#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_15__ {int output_flags; scalar_t__ video_render; } ;
struct TYPE_16__ {TYPE_1__ info; } ;
typedef  TYPE_2__ obs_source_t ;

/* Variables and functions */
 int OBS_SOURCE_ASYNC ; 
 int OBS_SOURCE_CUSTOM_DRAW ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 TYPE_2__* FUNC2 (TYPE_2__*) ; 
 TYPE_2__* FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 

void FUNC9(obs_source_t *filter)
{
	obs_source_t *target, *parent;
	bool custom_draw, async;
	uint32_t parent_flags;

	if (!FUNC4(filter, "obs_source_skip_video_filter"))
		return;

	target = FUNC3(filter);
	parent = FUNC2(filter);
	parent_flags = parent->info.output_flags;
	custom_draw = (parent_flags & OBS_SOURCE_CUSTOM_DRAW) != 0;
	async = (parent_flags & OBS_SOURCE_ASYNC) != 0;

	if (target == parent) {
		if (!custom_draw && !async)
			FUNC5(target);
		else if (target->info.video_render)
			FUNC6(target);
		else if (FUNC1(target))
			FUNC0(target);
		else
			FUNC7(target);

	} else {
		FUNC8(target);
	}
}