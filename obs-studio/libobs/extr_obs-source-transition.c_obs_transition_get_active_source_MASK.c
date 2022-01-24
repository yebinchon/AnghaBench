#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {struct TYPE_8__** transition_sources; scalar_t__ transitioning_video; scalar_t__ transitioning_audio; } ;
typedef  TYPE_1__ obs_source_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

obs_source_t *FUNC4(obs_source_t *transition)
{
	obs_source_t *ret;

	if (!FUNC2(transition, "obs_transition_get_source"))
		return NULL;

	FUNC0(transition);
	if (transition->transitioning_audio || transition->transitioning_video)
		ret = transition->transition_sources[1];
	else
		ret = transition->transition_sources[0];
	FUNC1(ret);
	FUNC3(transition);

	return ret;
}