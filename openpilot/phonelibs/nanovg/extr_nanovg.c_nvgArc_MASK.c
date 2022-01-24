#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ ncommands; } ;
typedef  TYPE_1__ NVGcontext ;

/* Variables and functions */
 float NVG_BEZIERTO ; 
 int NVG_CCW ; 
 int NVG_CW ; 
 int NVG_LINETO ; 
 int NVG_MOVETO ; 
 int NVG_PI ; 
 int FUNC0 (float) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,float*,int) ; 
 float FUNC2 (float) ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 float FUNC5 (float) ; 

void FUNC6(NVGcontext* ctx, float cx, float cy, float r, float a0, float a1, int dir)
{
	float a = 0, da = 0, hda = 0, kappa = 0;
	float dx = 0, dy = 0, x = 0, y = 0, tanx = 0, tany = 0;
	float px = 0, py = 0, ptanx = 0, ptany = 0;
	float vals[3 + 5*7 + 100];
	int i, ndivs, nvals;
	int move = ctx->ncommands > 0 ? NVG_LINETO : NVG_MOVETO;

	// Clamp angles
	da = a1 - a0;
	if (dir == NVG_CW) {
		if (FUNC0(da) >= NVG_PI*2) {
			da = NVG_PI*2;
		} else {
			while (da < 0.0f) da += NVG_PI*2;
		}
	} else {
		if (FUNC0(da) >= NVG_PI*2) {
			da = -NVG_PI*2;
		} else {
			while (da > 0.0f) da -= NVG_PI*2;
		}
	}

	// Split arc into max 90 degree segments.
	ndivs = FUNC3(1, FUNC4((int)(FUNC0(da) / (NVG_PI*0.5f) + 0.5f), 5));
	hda = (da / (float)ndivs) / 2.0f;
	kappa = FUNC0(4.0f / 3.0f * (1.0f - FUNC2(hda)) / FUNC5(hda));

	if (dir == NVG_CCW)
		kappa = -kappa;

	nvals = 0;
	for (i = 0; i <= ndivs; i++) {
		a = a0 + da * (i/(float)ndivs);
		dx = FUNC2(a);
		dy = FUNC5(a);
		x = cx + dx*r;
		y = cy + dy*r;
		tanx = -dy*r*kappa;
		tany = dx*r*kappa;

		if (i == 0) {
			vals[nvals++] = (float)move;
			vals[nvals++] = x;
			vals[nvals++] = y;
		} else {
			vals[nvals++] = NVG_BEZIERTO;
			vals[nvals++] = px+ptanx;
			vals[nvals++] = py+ptany;
			vals[nvals++] = x-tanx;
			vals[nvals++] = y-tany;
			vals[nvals++] = x;
			vals[nvals++] = y;
		}
		px = x;
		py = y;
		ptanx = tanx;
		ptany = tany;
	}

	FUNC1(ctx, vals, nvals);
}