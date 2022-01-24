#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {float* extent; int /*<<< orphan*/  xform; } ;
struct TYPE_5__ {int /*<<< orphan*/  xform; TYPE_1__ scissor; } ;
typedef  TYPE_2__ NVGstate ;
typedef  int /*<<< orphan*/  NVGcontext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (float*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,float,float,float,float) ; 
 int /*<<< orphan*/  FUNC2 (float*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (float*,float*) ; 
 float FUNC4 (float) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (float*,float,float,float,float,float,float,float,float) ; 

void FUNC7(NVGcontext* ctx, float x, float y, float w, float h)
{
	NVGstate* state = FUNC5(ctx);
	float pxform[6], invxorm[6];
	float rect[4];
	float ex, ey, tex, tey;

	// If no previous scissor has been set, set the scissor as current scissor.
	if (state->scissor.extent[0] < 0) {
		FUNC1(ctx, x, y, w, h);
		return;
	}

	// Transform the current scissor rect into current transform space.
	// If there is difference in rotation, this will be approximation.
	FUNC0(pxform, state->scissor.xform, sizeof(float)*6);
	ex = state->scissor.extent[0];
	ey = state->scissor.extent[1];
	FUNC2(invxorm, state->xform);
	FUNC3(pxform, invxorm);
	tex = ex*FUNC4(pxform[0]) + ey*FUNC4(pxform[2]);
	tey = ex*FUNC4(pxform[1]) + ey*FUNC4(pxform[3]);

	// Intersect rects.
	FUNC6(rect, pxform[4]-tex,pxform[5]-tey,tex*2,tey*2, x,y,w,h);

	FUNC1(ctx, rect[0], rect[1], rect[2], rect[3]);
}