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
struct dc_capture {scalar_t__ compatibility; int /*<<< orphan*/ * texture; } ;
typedef  int /*<<< orphan*/  gs_texture_t ;
typedef  int /*<<< orphan*/  gs_technique_t ;
typedef  int /*<<< orphan*/  gs_eparam_t ;
typedef  int /*<<< orphan*/  gs_effect_t ;

/* Variables and functions */
 int /*<<< orphan*/  GS_FLIP_V ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct dc_capture *capture, gs_effect_t *effect)
{
	gs_texture_t *texture = capture->texture;
	gs_technique_t *tech = FUNC2(effect, "Draw");
	gs_eparam_t *image = FUNC1(effect, "image");
	size_t passes;

	FUNC3(image, texture);

	passes = FUNC4(tech);
	for (size_t i = 0; i < passes; i++) {
		if (FUNC5(tech, i)) {
			if (capture->compatibility)
				FUNC0(texture, GS_FLIP_V, 0, 0);
			else
				FUNC0(texture, 0, 0, 0);

			FUNC7(tech);
		}
	}
	FUNC6(tech);
}