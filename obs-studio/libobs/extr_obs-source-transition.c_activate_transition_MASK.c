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
struct TYPE_6__ {int* transition_source_active; int transitioning_video; int transitioning_audio; } ;
typedef  TYPE_1__ obs_source_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_1__*) ; 

__attribute__((used)) static bool FUNC1(obs_source_t *transition, size_t idx,
				obs_source_t *child)
{
	if (!transition->transition_source_active[idx]) {
		if (!FUNC0(transition, child))
			return false;

		transition->transition_source_active[idx] = true;
	}

	transition->transitioning_video = true;
	transition->transitioning_audio = true;
	return true;
}