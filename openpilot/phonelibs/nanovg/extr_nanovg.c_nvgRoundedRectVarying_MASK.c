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
 int /*<<< orphan*/  NVG_KAPPA90 ; 
 float NVG_LINETO ; 
 float NVG_MOVETO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,float,float,float,float) ; 
 float FUNC2 (float) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,float*,int /*<<< orphan*/ ) ; 
 float FUNC4 (float,float) ; 
 float FUNC5 (float) ; 

void FUNC6(NVGcontext* ctx, float x, float y, float w, float h, float radTopLeft, float radTopRight, float radBottomRight, float radBottomLeft)
{
	if(radTopLeft < 0.1f && radTopRight < 0.1f && radBottomRight < 0.1f && radBottomLeft < 0.1f) {
		FUNC1(ctx, x, y, w, h);
		return;
	} else {
		float halfw = FUNC2(w)*0.5f;
		float halfh = FUNC2(h)*0.5f;
		float rxBL = FUNC4(radBottomLeft, halfw) * FUNC5(w), ryBL = FUNC4(radBottomLeft, halfh) * FUNC5(h);
		float rxBR = FUNC4(radBottomRight, halfw) * FUNC5(w), ryBR = FUNC4(radBottomRight, halfh) * FUNC5(h);
		float rxTR = FUNC4(radTopRight, halfw) * FUNC5(w), ryTR = FUNC4(radTopRight, halfh) * FUNC5(h);
		float rxTL = FUNC4(radTopLeft, halfw) * FUNC5(w), ryTL = FUNC4(radTopLeft, halfh) * FUNC5(h);
		float vals[] = {
			NVG_MOVETO, x, y + ryTL,
			NVG_LINETO, x, y + h - ryBL,
			NVG_BEZIERTO, x, y + h - ryBL*(1 - NVG_KAPPA90), x + rxBL*(1 - NVG_KAPPA90), y + h, x + rxBL, y + h,
			NVG_LINETO, x + w - rxBR, y + h,
			NVG_BEZIERTO, x + w - rxBR*(1 - NVG_KAPPA90), y + h, x + w, y + h - ryBR*(1 - NVG_KAPPA90), x + w, y + h - ryBR,
			NVG_LINETO, x + w, y + ryTR,
			NVG_BEZIERTO, x + w, y + ryTR*(1 - NVG_KAPPA90), x + w - rxTR*(1 - NVG_KAPPA90), y, x + w - rxTR, y,
			NVG_LINETO, x + rxTL, y,
			NVG_BEZIERTO, x + rxTL*(1 - NVG_KAPPA90), y, x, y + ryTL*(1 - NVG_KAPPA90), x, y + ryTL,
			NVG_CLOSE
		};
		FUNC3(ctx, vals, FUNC0(vals));
	}
}