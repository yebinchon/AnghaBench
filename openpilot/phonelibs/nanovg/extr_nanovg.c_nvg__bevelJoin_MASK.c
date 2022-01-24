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
struct TYPE_6__ {float dy; float dx; int flags; float x; float y; float dmx; float dmy; } ;
typedef  int /*<<< orphan*/  NVGvertex ;
typedef  TYPE_1__ NVGpoint ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (float) ; 
 int NVG_PR_INNERBEVEL ; 
 int NVG_PT_BEVEL ; 
 int NVG_PT_LEFT ; 
 int /*<<< orphan*/  FUNC1 (int,TYPE_1__*,TYPE_1__*,float,float*,float*,float*,float*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,float,float,float,int) ; 

__attribute__((used)) static NVGvertex* FUNC3(NVGvertex* dst, NVGpoint* p0, NVGpoint* p1,
										float lw, float rw, float lu, float ru, float fringe)
{
	float rx0,ry0,rx1,ry1;
	float lx0,ly0,lx1,ly1;
	float dlx0 = p0->dy;
	float dly0 = -p0->dx;
	float dlx1 = p1->dy;
	float dly1 = -p1->dx;
	FUNC0(fringe);

	if (p1->flags & NVG_PT_LEFT) {
		FUNC1(p1->flags & NVG_PR_INNERBEVEL, p0, p1, lw, &lx0,&ly0, &lx1,&ly1);

		FUNC2(dst, lx0, ly0, lu,1); dst++;
		FUNC2(dst, p1->x - dlx0*rw, p1->y - dly0*rw, ru,1); dst++;

		if (p1->flags & NVG_PT_BEVEL) {
			FUNC2(dst, lx0, ly0, lu,1); dst++;
			FUNC2(dst, p1->x - dlx0*rw, p1->y - dly0*rw, ru,1); dst++;

			FUNC2(dst, lx1, ly1, lu,1); dst++;
			FUNC2(dst, p1->x - dlx1*rw, p1->y - dly1*rw, ru,1); dst++;
		} else {
			rx0 = p1->x - p1->dmx * rw;
			ry0 = p1->y - p1->dmy * rw;

			FUNC2(dst, p1->x, p1->y, 0.5f,1); dst++;
			FUNC2(dst, p1->x - dlx0*rw, p1->y - dly0*rw, ru,1); dst++;

			FUNC2(dst, rx0, ry0, ru,1); dst++;
			FUNC2(dst, rx0, ry0, ru,1); dst++;

			FUNC2(dst, p1->x, p1->y, 0.5f,1); dst++;
			FUNC2(dst, p1->x - dlx1*rw, p1->y - dly1*rw, ru,1); dst++;
		}

		FUNC2(dst, lx1, ly1, lu,1); dst++;
		FUNC2(dst, p1->x - dlx1*rw, p1->y - dly1*rw, ru,1); dst++;

	} else {
		FUNC1(p1->flags & NVG_PR_INNERBEVEL, p0, p1, -rw, &rx0,&ry0, &rx1,&ry1);

		FUNC2(dst, p1->x + dlx0*lw, p1->y + dly0*lw, lu,1); dst++;
		FUNC2(dst, rx0, ry0, ru,1); dst++;

		if (p1->flags & NVG_PT_BEVEL) {
			FUNC2(dst, p1->x + dlx0*lw, p1->y + dly0*lw, lu,1); dst++;
			FUNC2(dst, rx0, ry0, ru,1); dst++;

			FUNC2(dst, p1->x + dlx1*lw, p1->y + dly1*lw, lu,1); dst++;
			FUNC2(dst, rx1, ry1, ru,1); dst++;
		} else {
			lx0 = p1->x + p1->dmx * lw;
			ly0 = p1->y + p1->dmy * lw;

			FUNC2(dst, p1->x + dlx0*lw, p1->y + dly0*lw, lu,1); dst++;
			FUNC2(dst, p1->x, p1->y, 0.5f,1); dst++;

			FUNC2(dst, lx0, ly0, lu,1); dst++;
			FUNC2(dst, lx0, ly0, lu,1); dst++;

			FUNC2(dst, p1->x + dlx1*lw, p1->y + dly1*lw, lu,1); dst++;
			FUNC2(dst, p1->x, p1->y, 0.5f,1); dst++;
		}

		FUNC2(dst, p1->x + dlx1*lw, p1->y + dly1*lw, lu,1); dst++;
		FUNC2(dst, rx1, ry1, ru,1); dst++;
	}

	return dst;
}