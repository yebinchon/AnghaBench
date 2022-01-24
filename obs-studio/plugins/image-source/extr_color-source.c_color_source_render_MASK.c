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
struct vec4 {int dummy; } ;
struct color_source {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  color; } ;
typedef  int /*<<< orphan*/  gs_technique_t ;
typedef  int /*<<< orphan*/  gs_eparam_t ;
typedef  int /*<<< orphan*/  gs_effect_t ;

/* Variables and functions */
 int /*<<< orphan*/  OBS_EFFECT_SOLID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct vec4*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct vec4*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(void *data, gs_effect_t *effect)
{
	FUNC0(effect);

	struct color_source *context = data;

	gs_effect_t *solid = FUNC9(OBS_EFFECT_SOLID);
	gs_eparam_t *color = FUNC2(solid, "color");
	gs_technique_t *tech = FUNC3(solid, "Solid");

	struct vec4 colorVal;
	FUNC10(&colorVal, context->color);
	FUNC4(color, &colorVal);

	FUNC5(tech);
	FUNC6(tech, 0);

	FUNC1(0, 0, context->width, context->height);

	FUNC8(tech);
	FUNC7(tech);
}