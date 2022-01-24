#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int* transition_source_active; scalar_t__ transition_cx; scalar_t__ transition_cy; struct TYPE_18__** transition_sources; } ;
typedef  TYPE_1__ obs_source_t ;
typedef  enum obs_transition_target { ____Placeholder_obs_transition_target } obs_transition_target ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC8(obs_source_t *transition, enum obs_transition_target target,
	   obs_source_t *new_child,
	   bool (*callback)(obs_source_t *t, size_t idx, obs_source_t *c))
{
	size_t idx = (size_t)target;
	obs_source_t *old_child;
	bool add_success = true;
	bool already_active;

	if (new_child)
		FUNC2(new_child);

	FUNC0(transition);

	old_child = transition->transition_sources[idx];

	if (new_child == old_child) {
		FUNC7(transition);
		FUNC3(new_child);
		return;
	}

	already_active = transition->transition_source_active[idx];

	if (already_active) {
		if (new_child)
			add_success = FUNC1(transition,
								  new_child);
		if (old_child && add_success)
			FUNC4(transition, old_child);
	}

	if (callback && add_success)
		add_success = callback(transition, idx, new_child);

	transition->transition_sources[idx] = add_success ? new_child : NULL;

	FUNC7(transition);

	if (add_success) {
		if (transition->transition_cx == 0 ||
		    transition->transition_cy == 0) {
			FUNC6(transition);
			FUNC5(transition);
		}
	} else {
		FUNC3(new_child);
	}

	FUNC3(old_child);
}