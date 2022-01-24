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
struct obs_source {int dummy; } ;
typedef  int /*<<< orphan*/  gs_technique_t ;
typedef  int /*<<< orphan*/  gs_effect_t ;

/* Variables and functions */
 int /*<<< orphan*/  OBS_EFFECT_DEFAULT ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct obs_source*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct obs_source *source)
{
	gs_effect_t *effect = FUNC1();
	bool def_draw = (!effect);
	gs_technique_t *tech = NULL;

	if (def_draw) {
		effect = FUNC6(OBS_EFFECT_DEFAULT);
		tech = FUNC0(effect, "Draw");
		FUNC2(tech);
		FUNC3(tech, 0);
	}

	FUNC7(source, effect);

	if (def_draw) {
		FUNC5(tech);
		FUNC4(tech);
	}
}