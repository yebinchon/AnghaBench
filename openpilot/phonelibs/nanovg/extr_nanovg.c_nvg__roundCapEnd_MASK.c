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
struct TYPE_3__ {float x; float y; } ;
typedef  int /*<<< orphan*/  NVGvertex ;
typedef  TYPE_1__ NVGpoint ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (float) ; 
 int NVG_PI ; 
 float FUNC1 (float) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,float,float,float,int) ; 
 float FUNC3 (float) ; 

__attribute__((used)) static NVGvertex* FUNC4(NVGvertex* dst, NVGpoint* p,
										  float dx, float dy, float w, int ncap, float aa)
{
	int i;
	float px = p->x;
	float py = p->y;
	float dlx = dy;
	float dly = -dx;
	FUNC0(aa);
	FUNC2(dst, px + dlx*w, py + dly*w, 0,1); dst++;
	FUNC2(dst, px - dlx*w, py - dly*w, 1,1); dst++;
	for (i = 0; i < ncap; i++) {
		float a = i/(float)(ncap-1)*NVG_PI;
		float ax = FUNC1(a) * w, ay = FUNC3(a) * w;
		FUNC2(dst, px, py, 0.5f,1); dst++;
		FUNC2(dst, px - dlx*ax + dx*ay, py - dly*ax + dy*ay, 0,1); dst++;
	}
	return dst;
}