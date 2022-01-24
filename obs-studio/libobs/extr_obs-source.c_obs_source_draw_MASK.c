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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  gs_texture_t ;
typedef  int /*<<< orphan*/  gs_eparam_t ;
typedef  int /*<<< orphan*/  gs_effect_t ;

/* Variables and functions */
 int /*<<< orphan*/  GS_FLIP_V ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (float,float,float) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 

void FUNC9(gs_texture_t *texture, int x, int y, uint32_t cx,
		     uint32_t cy, bool flip)
{
	gs_effect_t *effect = FUNC4();
	bool change_pos = (x != 0 || y != 0);
	gs_eparam_t *image;

	if (!effect) {
		FUNC0(LOG_WARNING, "obs_source_draw: no active effect!");
		return;
	}

	if (!FUNC8(texture, "obs_source_draw"))
		return;

	image = FUNC2(effect, "image");
	FUNC3(image, texture);

	if (change_pos) {
		FUNC6();
		FUNC7((float)x, (float)y, 0.0f);
	}

	FUNC1(texture, flip ? GS_FLIP_V : 0, cx, cy);

	if (change_pos)
		FUNC5();
}