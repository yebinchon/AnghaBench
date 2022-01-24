#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {float dy; float dx; int flags; float x; float y; } ;
typedef  int /*<<< orphan*/  NVGvertex ;
typedef  TYPE_1__ NVGpoint ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (float) ; 
 int NVG_PI ; 
 int NVG_PR_INNERBEVEL ; 
 int NVG_PT_LEFT ; 
 float FUNC1 (float,float) ; 
 scalar_t__ FUNC2 (float) ; 
 float FUNC3 (float) ; 
 int /*<<< orphan*/  FUNC4 (int,TYPE_1__*,TYPE_1__*,float,float*,float*,float*,float*) ; 
 int FUNC5 (int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,float,float,float,int) ; 
 float FUNC7 (float) ; 

__attribute__((used)) static NVGvertex* FUNC8(NVGvertex* dst, NVGpoint* p0, NVGpoint* p1,
										float lw, float rw, float lu, float ru, int ncap, float fringe)
{
	int i, n;
	float dlx0 = p0->dy;
	float dly0 = -p0->dx;
	float dlx1 = p1->dy;
	float dly1 = -p1->dx;
	FUNC0(fringe);

	if (p1->flags & NVG_PT_LEFT) {
		float lx0,ly0,lx1,ly1,a0,a1;
		FUNC4(p1->flags & NVG_PR_INNERBEVEL, p0, p1, lw, &lx0,&ly0, &lx1,&ly1);
		a0 = FUNC1(-dly0, -dlx0);
		a1 = FUNC1(-dly1, -dlx1);
		if (a1 > a0) a1 -= NVG_PI*2;

		FUNC6(dst, lx0, ly0, lu,1); dst++;
		FUNC6(dst, p1->x - dlx0*rw, p1->y - dly0*rw, ru,1); dst++;

		n = FUNC5((int)FUNC2(((a0 - a1) / NVG_PI) * ncap), 2, ncap);
		for (i = 0; i < n; i++) {
			float u = i/(float)(n-1);
			float a = a0 + u*(a1-a0);
			float rx = p1->x + FUNC3(a) * rw;
			float ry = p1->y + FUNC7(a) * rw;
			FUNC6(dst, p1->x, p1->y, 0.5f,1); dst++;
			FUNC6(dst, rx, ry, ru,1); dst++;
		}

		FUNC6(dst, lx1, ly1, lu,1); dst++;
		FUNC6(dst, p1->x - dlx1*rw, p1->y - dly1*rw, ru,1); dst++;

	} else {
		float rx0,ry0,rx1,ry1,a0,a1;
		FUNC4(p1->flags & NVG_PR_INNERBEVEL, p0, p1, -rw, &rx0,&ry0, &rx1,&ry1);
		a0 = FUNC1(dly0, dlx0);
		a1 = FUNC1(dly1, dlx1);
		if (a1 < a0) a1 += NVG_PI*2;

		FUNC6(dst, p1->x + dlx0*rw, p1->y + dly0*rw, lu,1); dst++;
		FUNC6(dst, rx0, ry0, ru,1); dst++;

		n = FUNC5((int)FUNC2(((a1 - a0) / NVG_PI) * ncap), 2, ncap);
		for (i = 0; i < n; i++) {
			float u = i/(float)(n-1);
			float a = a0 + u*(a1-a0);
			float lx = p1->x + FUNC3(a) * lw;
			float ly = p1->y + FUNC7(a) * lw;
			FUNC6(dst, lx, ly, lu,1); dst++;
			FUNC6(dst, p1->x, p1->y, 0.5f,1); dst++;
		}

		FUNC6(dst, p1->x + dlx1*rw, p1->y + dly1*rw, lu,1); dst++;
		FUNC6(dst, rx1, ry1, ru,1); dst++;

	}
	return dst;
}