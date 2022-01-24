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
typedef  int /*<<< orphan*/  NVGcontext ;

/* Variables and functions */
 float NVG_BEZIERTO ; 
 float NVG_CLOSE ; 
 int /*<<< orphan*/  FUNC0 (float*) ; 
 float NVG_KAPPA90 ; 
 float NVG_MOVETO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,float*,int /*<<< orphan*/ ) ; 

void FUNC2(NVGcontext* ctx, float cx, float cy, float rx, float ry)
{
	float vals[] = {
		NVG_MOVETO, cx-rx, cy,
		NVG_BEZIERTO, cx-rx, cy+ry*NVG_KAPPA90, cx-rx*NVG_KAPPA90, cy+ry, cx, cy+ry,
		NVG_BEZIERTO, cx+rx*NVG_KAPPA90, cy+ry, cx+rx, cy+ry*NVG_KAPPA90, cx+rx, cy,
		NVG_BEZIERTO, cx+rx, cy-ry*NVG_KAPPA90, cx+rx*NVG_KAPPA90, cy-ry, cx, cy-ry,
		NVG_BEZIERTO, cx-rx*NVG_KAPPA90, cy-ry, cx-rx, cy-ry*NVG_KAPPA90, cx-rx, cy,
		NVG_CLOSE
	};
	FUNC1(ctx, vals, FUNC0(vals));
}