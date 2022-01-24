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
struct vec4 {float w; } ;
struct obs_display {int /*<<< orphan*/  background_color; int /*<<< orphan*/  swap; } ;

/* Variables and functions */
 int GS_CLEAR_COLOR ; 
 int GS_CLEAR_DEPTH ; 
 int GS_CLEAR_STENCIL ; 
 int /*<<< orphan*/  GS_NEITHER ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,struct vec4*,float,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (float,float,float,float,float,float) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct vec4*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC9(struct obs_display *display,
					uint32_t cx, uint32_t cy,
					bool size_changed)
{
	struct vec4 clear_color;

	FUNC3(display->swap);

	if (size_changed)
		FUNC5(cx, cy);

	FUNC0();

	FUNC8(&clear_color, display->background_color);
	clear_color.w = 1.0f;

	FUNC1(GS_CLEAR_COLOR | GS_CLEAR_DEPTH | GS_CLEAR_STENCIL,
		 &clear_color, 1.0f, 0);

	FUNC2(false);
	/* gs_enable_blending(false); */
	FUNC6(GS_NEITHER);

	FUNC4(0.0f, (float)cx, 0.0f, (float)cy, -100.0f, 100.0f);
	FUNC7(0, 0, cx, cy);
}