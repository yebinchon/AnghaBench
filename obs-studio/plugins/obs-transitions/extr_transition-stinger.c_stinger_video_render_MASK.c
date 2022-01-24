#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct stinger_info {float transition_point; int /*<<< orphan*/  media_source; int /*<<< orphan*/  source; } ;
typedef  int /*<<< orphan*/  gs_effect_t ;
typedef  enum obs_transition_target { ____Placeholder_obs_transition_target } obs_transition_target ;

/* Variables and functions */
 int OBS_TRANSITION_SOURCE_A ; 
 int OBS_TRANSITION_SOURCE_B ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (float,float,float) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 float FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC9(void *data, gs_effect_t *effect)
{
	struct stinger_info *s = data;

	float t = FUNC7(s->source);
	bool use_a = t < s->transition_point;

	enum obs_transition_target target = use_a ? OBS_TRANSITION_SOURCE_A
						  : OBS_TRANSITION_SOURCE_B;

	if (!FUNC8(s->source, target))
		return;

	/* --------------------- */

	float source_cx = (float)FUNC5(s->source);
	float source_cy = (float)FUNC4(s->source);
	uint32_t media_cx = FUNC5(s->media_source);
	uint32_t media_cy = FUNC4(s->media_source);

	if (!media_cx || !media_cy)
		return;

	float scale_x = source_cx / (float)media_cx;
	float scale_y = source_cy / (float)media_cy;

	FUNC2();
	FUNC3(scale_x, scale_y, 1.0f);
	FUNC6(s->media_source);
	FUNC1();

	FUNC0(effect);
}