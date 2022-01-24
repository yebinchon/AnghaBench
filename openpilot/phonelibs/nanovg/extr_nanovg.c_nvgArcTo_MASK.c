#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {float commandx; float commandy; scalar_t__ ncommands; int distTol; } ;
typedef  TYPE_1__ NVGcontext ;

/* Variables and functions */
 int NVG_CCW ; 
 int NVG_CW ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,float,float,float,float,float,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,float,float) ; 
 float FUNC2 (float) ; 
 float FUNC3 (float,float) ; 
 float FUNC4 (float,float,float,float) ; 
 int FUNC5 (float,float,float,float,float,float) ; 
 int /*<<< orphan*/  FUNC6 (float*,float*) ; 
 scalar_t__ FUNC7 (float,float,float,float,int) ; 
 float FUNC8 (float) ; 

void FUNC9(NVGcontext* ctx, float x1, float y1, float x2, float y2, float radius)
{
	float x0 = ctx->commandx;
	float y0 = ctx->commandy;
	float dx0,dy0, dx1,dy1, a, d, cx,cy, a0,a1;
	int dir;

	if (ctx->ncommands == 0) {
		return;
	}

	// Handle degenerate cases.
	if (FUNC7(x0,y0, x1,y1, ctx->distTol) ||
		FUNC7(x1,y1, x2,y2, ctx->distTol) ||
		FUNC5(x1,y1, x0,y0, x2,y2) < ctx->distTol*ctx->distTol ||
		radius < ctx->distTol) {
		FUNC1(ctx, x1,y1);
		return;
	}

	// Calculate tangential circle to lines (x0,y0)-(x1,y1) and (x1,y1)-(x2,y2).
	dx0 = x0-x1;
	dy0 = y0-y1;
	dx1 = x2-x1;
	dy1 = y2-y1;
	FUNC6(&dx0,&dy0);
	FUNC6(&dx1,&dy1);
	a = FUNC2(dx0*dx1 + dy0*dy1);
	d = radius / FUNC8(a/2.0f);

//	printf("a=%f° d=%f\n", a/NVG_PI*180.0f, d);

	if (d > 10000.0f) {
		FUNC1(ctx, x1,y1);
		return;
	}

	if (FUNC4(dx0,dy0, dx1,dy1) > 0.0f) {
		cx = x1 + dx0*d + dy0*radius;
		cy = y1 + dy0*d + -dx0*radius;
		a0 = FUNC3(dx0, -dy0);
		a1 = FUNC3(-dx1, dy1);
		dir = NVG_CW;
//		printf("CW c=(%f, %f) a0=%f° a1=%f°\n", cx, cy, a0/NVG_PI*180.0f, a1/NVG_PI*180.0f);
	} else {
		cx = x1 + dx0*d + -dy0*radius;
		cy = y1 + dy0*d + dx0*radius;
		a0 = FUNC3(-dx0, dy0);
		a1 = FUNC3(dx1, -dy1);
		dir = NVG_CCW;
//		printf("CCW c=(%f, %f) a0=%f° a1=%f°\n", cx, cy, a0/NVG_PI*180.0f, a1/NVG_PI*180.0f);
	}

	FUNC0(ctx, cx, cy, radius, a0, a1, dir);
}