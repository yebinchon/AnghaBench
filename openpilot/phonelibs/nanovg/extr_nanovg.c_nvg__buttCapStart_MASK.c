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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,float,float,int,int) ; 

__attribute__((used)) static NVGvertex* FUNC1(NVGvertex* dst, NVGpoint* p,
										   float dx, float dy, float w, float d, float aa)
{
	float px = p->x - dx*d;
	float py = p->y - dy*d;
	float dlx = dy;
	float dly = -dx;
	FUNC0(dst, px + dlx*w - dx*aa, py + dly*w - dy*aa, 0,0); dst++;
	FUNC0(dst, px - dlx*w - dx*aa, py - dly*w - dy*aa, 1,0); dst++;
	FUNC0(dst, px + dlx*w, py + dly*w, 0,1); dst++;
	FUNC0(dst, px - dlx*w, py - dly*w, 1,1); dst++;
	return dst;
}