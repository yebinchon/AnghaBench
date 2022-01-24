#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int* transition_source_active; int transitioning_video; int transitioning_audio; struct TYPE_9__** transition_sources; } ;
typedef  TYPE_1__ obs_source_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

void FUNC5(obs_source_t *transition)
{
	obs_source_t *s[2];
	bool active[2];

	if (!FUNC3(transition, "obs_transition_clear"))
		return;

	FUNC0(transition);
	for (size_t i = 0; i < 2; i++) {
		s[i] = transition->transition_sources[i];
		active[i] = transition->transition_source_active[i];
		transition->transition_sources[i] = NULL;
		transition->transition_source_active[i] = false;
	}
	transition->transitioning_video = false;
	transition->transitioning_audio = false;
	FUNC4(transition);

	for (size_t i = 0; i < 2; i++) {
		if (s[i] && active[i])
			FUNC2(transition, s[i]);
		FUNC1(s[i]);
	}
}