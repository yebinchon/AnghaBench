#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  tex; int /*<<< orphan*/  render_y; int /*<<< orphan*/  render_x; } ;
typedef  TYPE_1__ xcursor_t ;
typedef  int /*<<< orphan*/  gs_eparam_t ;
typedef  int /*<<< orphan*/  gs_effect_t ;

/* Variables and functions */
 int /*<<< orphan*/  GS_BLEND_INVSRCALPHA ; 
 int /*<<< orphan*/  GS_BLEND_SRCALPHA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int,int,int) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,float) ; 

void FUNC11(xcursor_t *data)
{
	if (!data->tex)
		return;

	gs_effect_t *effect = FUNC7();
	gs_eparam_t *image = FUNC4(effect, "image");
	FUNC5(image, data->tex);

	FUNC2();
	FUNC0(GS_BLEND_SRCALPHA, GS_BLEND_INVSRCALPHA);
	FUNC6(true, true, true, false);

	FUNC9();
	FUNC10(data->render_x, data->render_y, 0.0f);
	FUNC3(data->tex, 0, 0, 0);
	FUNC8();

	FUNC6(true, true, true, true);
	FUNC1();
}