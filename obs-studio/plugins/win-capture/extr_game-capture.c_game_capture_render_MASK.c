#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ cursor; scalar_t__ allow_transparency; } ;
struct game_capture {int /*<<< orphan*/  cursor_hidden; TYPE_2__ config; TYPE_1__* global_hook_info; int /*<<< orphan*/  texture; int /*<<< orphan*/  active; } ;
typedef  int /*<<< orphan*/  gs_effect_t ;
struct TYPE_3__ {int /*<<< orphan*/  flip; } ;

/* Variables and functions */
 int /*<<< orphan*/  OBS_EFFECT_DEFAULT ; 
 int /*<<< orphan*/  OBS_EFFECT_OPAQUE ; 
 int /*<<< orphan*/  FUNC0 (struct game_capture*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void *data, gs_effect_t *effect)
{
	struct game_capture *gc = data;
	if (!gc->texture || !gc->active)
		return;

	effect = FUNC2(gc->config.allow_transparency
					     ? OBS_EFFECT_DEFAULT
					     : OBS_EFFECT_OPAQUE);

	while (FUNC1(effect, "Draw")) {
		FUNC3(gc->texture, 0, 0, 0, 0,
				gc->global_hook_info->flip);

		if (gc->config.allow_transparency && gc->config.cursor &&
		    !gc->cursor_hidden) {
			FUNC0(gc);
		}
	}

	if (!gc->config.allow_transparency && gc->config.cursor &&
	    !gc->cursor_hidden) {
		effect = FUNC2(OBS_EFFECT_DEFAULT);

		while (FUNC1(effect, "Draw")) {
			FUNC0(gc);
		}
	}
}