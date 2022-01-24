#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_7__ {scalar_t__ transition_actual_cy; scalar_t__ transition_actual_cx; struct TYPE_7__** transition_sources; } ;
typedef  TYPE_1__ obs_source_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC4(obs_source_t *transition)
{
	uint32_t cx = 0, cy = 0;
	obs_source_t *child;

	FUNC0(transition);

	for (size_t i = 0; i < 2; i++) {
		child = transition->transition_sources[i];
		if (child) {
			uint32_t new_cx = FUNC2(child);
			uint32_t new_cy = FUNC1(child);
			if (new_cx > cx)
				cx = new_cx;
			if (new_cy > cy)
				cy = new_cy;
		}
	}

	FUNC3(transition);

	transition->transition_actual_cx = cx;
	transition->transition_actual_cy = cy;
}