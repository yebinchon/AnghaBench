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
struct TYPE_6__ {int* transition_source_active; scalar_t__* transition_sources; } ;
typedef  TYPE_1__ obs_source_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static inline bool FUNC3(obs_source_t *transition, size_t idx)
{
	bool success = true;

	FUNC0(transition);

	if (transition->transition_sources[idx] &&
	    !transition->transition_source_active[idx]) {

		success = FUNC1(
			transition, transition->transition_sources[idx]);
		if (success)
			transition->transition_source_active[idx] = true;
	}

	FUNC2(transition);

	return success;
}